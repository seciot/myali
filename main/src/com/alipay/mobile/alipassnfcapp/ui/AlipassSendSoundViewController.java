package com.alipay.mobile.alipassnfcapp.ui;

import android.annotation.SuppressLint;
import android.app.Application;
import android.content.Context;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.RectF;
import android.media.AudioManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.WindowManager;
import com.alipay.mobile.alipassnfcapp.a.a;
import com.alipay.mobile.alipassnfcapp.ui.app.AlipassNfcApp;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.commonui.widget.APImageView;
import com.alipay.mobile.commonui.widget.APRelativeLayout;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.service.phoneblacklist.PhoneBlackList;
import com.alipay.sonicwavenfc.SonicWaveNFC;
import com.alipay.sonicwavenfc.SonicWaveNFCHandler;
import java.util.Timer;
import java.util.TimerTask;

public class AlipassSendSoundViewController extends h
  implements View.OnClickListener
{
  public static String BIZ_TAG = "CheckPhoneBlack";
  public static final String PHONE_BLACK = "phone_black";
  private static final String TAG = "AlipassSendSoundViewController";
  private static final String WAVE_ISSETSURPPORT = "isSetSurpport";
  private APImageView animImgView = null;
  g canvasSector = null;
  private boolean firstTime = false;

  @SuppressLint({"HandlerLeak"})
  final Handler handlerWave = new d(this);
  private AlipassSendSoundViewController.HeadSetReceiver headSetReceiver;
  private int iTimeoutSeconds = 60;
  private LayoutInflater inflater = null;
  boolean isSupportReceiveSound = true;
  float loopNum = 0.0F;
  private int loopShowAnimation = 0;
  private i mCheckPhoneBlackTask;
  private boolean mIsFreshStart = true;
  private SonicWaveNFC mSonicWaveNFC;
  private SonicWaveNFCHandler mSonicWaveNFCHandler = new f(this);
  private APTextView messagePromptText;
  private boolean misHeadSetOn = false;
  private Paint paint = null;
  private RectF rectF = null;
  private SharedPreferences settings;
  boolean stopAnim = false;
  boolean stopFlag = false;
  TimerTask task = null;
  Timer timer = null;
  private int variance = 0;
  private APRelativeLayout wave_Layout;
  private APRelativeLayout wave_circle_image_Layout;
  private APImageView wave_image;
  private APRelativeLayout wave_image_retry_Layout;
  private APImageView wave_retry_image;

  private void buttonInit(boolean paramBoolean)
  {
    this.loopNum = 0.0F;
    this.stopFlag = paramBoolean;
    deleteAnima();
  }

  private void checkPhoneBlack()
  {
    this.mCheckPhoneBlackTask = new i(this, BIZ_TAG, (byte)0);
    i locali = this.mCheckPhoneBlackTask;
    String[] arrayOfString = new String[3];
    arrayOfString[0] = Build.MANUFACTURER;
    arrayOfString[1] = Build.MODEL;
    arrayOfString[2] = Build.VERSION.RELEASE;
    locali.execute(arrayOfString);
  }

  private void clearMessage()
  {
    if (this.timer != null)
    {
      this.timer.cancel();
      this.timer = null;
    }
    if (this.task != null)
    {
      this.task.cancel();
      this.task = null;
    }
    if (this.animImgView != null)
      this.animImgView.clearAnimation();
  }

  private void deleteAnima()
  {
    this.wave_Layout.removeAllViews();
    this.wave_circle_image_Layout.removeAllViews();
    this.canvasSector = null;
  }

  private PhoneBlackList getPhoneBlackListService()
  {
    return (PhoneBlackList)this.mApp.getMicroApplicationContext().getExtServiceByInterface(PhoneBlackList.class.getName());
  }

  private String getWaveSendCode()
  {
    String str = ((AlipassNfcApp)this.mApp).getAppBundle().getString("wave_code");
    if (str != null)
    {
      new StringBuilder("加密前的code=[").append(str).append("]").toString();
      str = a.a(str);
      new StringBuilder("加密后的code=[").append(str).append("]").toString();
    }
    return str;
  }

  private void init()
  {
    registerHeadsetPlugReceiver();
    this.settings = getRootController().getSharedPreferences("phone_black", 0);
    if (!this.settings.getBoolean("isSetSurpport", false))
      checkPhoneBlack();
  }

  private void initWave()
  {
    this.paint = new Paint();
    this.paint.setARGB(255, 253, 149, 36);
    this.paint.setAntiAlias(true);
    this.paint.setStyle(Paint.Style.STROKE);
    this.paint.setStrokeWidth(15.0F);
    this.inflater = LayoutInflater.from(getRootController());
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    getRootController().getWindowManager().getDefaultDisplay().getMetrics(localDisplayMetrics);
    if ((localDisplayMetrics.widthPixels != 0) && (540 >= localDisplayMetrics.widthPixels));
    for (this.variance = 23; ; this.variance = 30)
    {
      new StringBuilder("屏幕分辨率为:").append(localDisplayMetrics.widthPixels).append(" * ").append(localDisplayMetrics.heightPixels).toString();
      return;
    }
  }

  private void loadAllVariables()
  {
    APTitleBar localAPTitleBar = (APTitleBar)findViewById(com.alipay.mobile.alipassnfcapp.c.b);
    localAPTitleBar.setTitleText(getString(com.alipay.mobile.alipassnfcapp.e.c));
    localAPTitleBar.setGenericButtonVisiable(false);
    this.wave_Layout = ((APRelativeLayout)findViewById(com.alipay.mobile.alipassnfcapp.c.c));
    this.wave_circle_image_Layout = ((APRelativeLayout)findViewById(com.alipay.mobile.alipassnfcapp.c.d));
    this.wave_image = ((APImageView)findViewById(com.alipay.mobile.alipassnfcapp.c.e));
    this.wave_image.setOnClickListener(this);
    this.wave_retry_image = ((APImageView)findViewById(com.alipay.mobile.alipassnfcapp.c.g));
    this.wave_retry_image.setOnClickListener(this);
    this.wave_image_retry_Layout = ((APRelativeLayout)findViewById(com.alipay.mobile.alipassnfcapp.c.f));
    this.messagePromptText = ((APTextView)findViewById(com.alipay.mobile.alipassnfcapp.c.a));
    this.mSonicWaveNFC = SonicWaveNFC.getInstance();
    this.mSonicWaveNFC.initSonicWaveNFC(getRootController());
  }

  private void showWave()
  {
    if (this.task != null)
    {
      this.task.cancel();
      this.task = null;
    }
    if (this.timer != null)
    {
      this.timer.cancel();
      this.timer = null;
    }
    this.timer = new Timer();
    this.task = new c(this);
    this.timer.schedule(this.task, 0L, 125L);
  }

  private void startVerify()
  {
    if (!isHeadsetOn(getRootController()))
      sendSoundWave(getWaveSendCode());
  }

  private void upDateNotice()
  {
    if (isHeadsetOn(getRootController()))
    {
      wavePause();
      if (this.animImgView != null)
        this.animImgView.clearAnimation();
      this.messagePromptText.setText(com.alipay.mobile.alipassnfcapp.e.a);
      this.wave_retry_image.setEnabled(false);
      return;
    }
    this.messagePromptText.setText(com.alipay.mobile.alipassnfcapp.e.b);
    this.wave_retry_image.setEnabled(true);
  }

  protected Object doInBackground(String paramString, String[] paramArrayOfString)
  {
    if (BIZ_TAG.equalsIgnoreCase(paramString))
    {
      getPhoneBlackListService().queryPhoneBlackList(this.mApp.getMicroApplicationContext().getApplicationContext(), new e(this));
      return Boolean.valueOf(this.isSupportReceiveSound);
    }
    return super.doInBackground(paramString, paramArrayOfString);
  }

  public boolean isHeadsetOn(Context paramContext)
  {
    try
    {
      if (((AudioManager)paramContext.getSystemService("audio")).isBluetoothA2dpOn())
      {
        this.misHeadSetOn = true;
        return true;
      }
    }
    catch (Exception localException1)
    {
      if (this.firstTime);
    }
    try
    {
      this.misHeadSetOn = ((AudioManager)paramContext.getSystemService("audio")).isWiredHeadsetOn();
      this.firstTime = true;
      label53: return this.misHeadSetOn;
    }
    catch (Exception localException2)
    {
      break label53;
    }
  }

  public void onClick(View paramView)
  {
    if (paramView.getId() == com.alipay.mobile.alipassnfcapp.c.e)
    {
      wavePause();
      if (this.animImgView != null)
        this.animImgView.clearAnimation();
      this.wave_Layout.removeAllViews();
    }
    while (paramView.getId() != com.alipay.mobile.alipassnfcapp.c.g)
      return;
    retry();
  }

  protected void onCreate()
  {
    super.onCreate();
    this.mView = LayoutInflater.from(getRootController()).inflate(com.alipay.mobile.alipassnfcapp.d.a, null, false);
    addView(this.mView, null);
    loadAllVariables();
    init();
    initWave();
    buttonInit(false);
  }

  public void onDestroy()
  {
    unRegisterHeadsetPlugReceiver();
    super.onDestroy();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      if (this.mSonicWaveNFC != null)
        this.mSonicWaveNFC.stopSendData();
      getRootController().finish();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  public void onPause()
  {
    if (this.mSonicWaveNFC != null)
      this.mSonicWaveNFC.stopSendData();
    clearMessage();
    this.mIsFreshStart = false;
    super.onPause();
  }

  protected void onPostExecute(String paramString, Object paramObject)
  {
    if ((StringUtils.isBlank(paramString)) || (paramObject == null))
      return;
    if (BIZ_TAG.equalsIgnoreCase(paramString))
    {
      SharedPreferences.Editor localEditor = this.settings.edit();
      localEditor.putBoolean("isSetSurpport", ((Boolean)paramObject).booleanValue());
      localEditor.commit();
    }
    super.onPostExecute(paramString, paramObject);
  }

  protected void onResume()
  {
    super.onResume();
    if (this.mIsFreshStart)
    {
      startVerify();
      return;
    }
    wavePause();
  }

  public void registerHeadsetPlugReceiver()
  {
    unRegisterHeadsetPlugReceiver();
    try
    {
      IntentFilter localIntentFilter = new IntentFilter();
      localIntentFilter.addAction("android.intent.action.HEADSET_PLUG");
      if (this.headSetReceiver == null)
        this.headSetReceiver = new AlipassSendSoundViewController.HeadSetReceiver(this);
      getRootController().getApplication().registerReceiver(this.headSetReceiver, localIntentFilter);
      return;
    }
    catch (Exception localException)
    {
    }
  }

  protected void retry()
  {
    if (!isHeadsetOn(getRootController()))
    {
      waveStart();
      sendSoundWave(getWaveSendCode());
    }
  }

  protected void sendSoundWave(String paramString)
  {
    this.mSonicWaveNFC.setBkSoundWave4MixFromAsset(getRootController(), "SendingData.wav");
    try
    {
      this.mSonicWaveNFC.startSendData(paramString, this.iTimeoutSeconds, 2, 60, getRootController(), this.mSonicWaveNFCHandler);
      showWave();
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  public void unRegisterHeadsetPlugReceiver()
  {
    if (this.headSetReceiver != null);
    try
    {
      getRootController().getApplication().unregisterReceiver(this.headSetReceiver);
      this.headSetReceiver = null;
      return;
    }
    catch (Exception localException)
    {
    }
  }

  protected void wavePause()
  {
    buttonInit(true);
    this.messagePromptText.setText(com.alipay.mobile.alipassnfcapp.e.b);
    this.wave_image_retry_Layout.setVisibility(0);
    this.wave_retry_image.setVisibility(0);
    this.messagePromptText.setVisibility(0);
    this.wave_image.setVisibility(8);
    if (this.mSonicWaveNFC != null)
      this.mSonicWaveNFC.stopSendData();
  }

  protected void waveStart()
  {
    buttonInit(false);
    this.stopAnim = false;
    this.wave_image_retry_Layout.setVisibility(8);
    this.messagePromptText.setVisibility(8);
    this.wave_retry_image.setVisibility(8);
    this.wave_image.setVisibility(0);
    if (this.animImgView != null)
      this.animImgView.setVisibility(0);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassnfcapp.ui.AlipassSendSoundViewController
 * JD-Core Version:    0.6.2
 */