package com.alipay.mobile.onsitepay.payer.sound;

import android.content.Context;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.RectF;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.alipay.mobile.commonui.widget.APImageView;
import com.alipay.mobile.onsitepay.d;
import com.alipay.mobile.onsitepay.e;
import java.util.Timer;
import java.util.TimerTask;

public class SoundButtonActivity extends RelativeLayout
{
  static String TAG = "SoundButtonActivity";
  private Timer a = null;
  private int b = 0;
  public APImageView button_background_image;
  private Handler c = new ab(this);
  af canvasSector = null;
  private Paint d = null;
  private RectF e = null;
  private LayoutInflater f = null;
  private int g = 0;
  ImageView[] imageView = new ImageView[4];
  boolean isWaveNow = false;
  public float loopNum = 0.0F;
  TimerTask task;
  public boolean timeOut = false;
  ag waveButtonListener;
  public RelativeLayout wave_Layout;
  public RelativeLayout wave_circle_image_Layout;
  public APImageView wave_image;
  public RelativeLayout wave_image_init_Layout;
  public RelativeLayout wave_image_retry_Layout;
  public APImageView wave_retry_image;
  public APImageView white_image;

  public SoundButtonActivity(Context paramContext)
  {
    this(paramContext, null);
  }

  public SoundButtonActivity(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public SoundButtonActivity(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    LayoutInflater.from(paramContext).inflate(e.o, this, true);
  }

  private void a()
  {
    this.loopNum = 0.0F;
    this.canvasSector = null;
    this.wave_circle_image_Layout.removeAllViews();
  }

  private void b()
  {
    if (this.a != null)
    {
      this.a.cancel();
      this.a = null;
    }
    if (this.task != null)
    {
      this.task.cancel();
      this.task = null;
    }
  }

  public void initAction()
  {
    this.wave_image.setOnClickListener(new ac(this));
    new StringBuilder(" wave_image.getWidth()=").append(this.wave_image.getWidth()).append(" wave_image.getHeight()=").append(this.wave_image.getHeight()).toString();
    this.wave_retry_image.setOnClickListener(new ad(this));
    setWavingState(true);
    initWave();
    a();
    this.wave_image_init_Layout.setVisibility(0);
  }

  public void initWave()
  {
    this.d = new Paint();
    this.d.setARGB(255, 11, 134, 254);
    this.d.setAntiAlias(true);
    this.d.setStyle(Paint.Style.FILL);
    this.f = LayoutInflater.from(getContext());
  }

  public boolean isTimeOut()
  {
    return this.timeOut;
  }

  public boolean isWaveNow()
  {
    return this.isWaveNow;
  }

  protected void onFinishInflate()
  {
    super.onFinishInflate();
    this.wave_Layout = ((RelativeLayout)findViewById(d.aI));
    this.wave_circle_image_Layout = ((RelativeLayout)findViewById(d.aK));
    this.wave_image_retry_Layout = ((RelativeLayout)findViewById(d.aN));
    this.wave_image_init_Layout = ((RelativeLayout)findViewById(d.aM));
    this.wave_image = ((APImageView)findViewById(d.aL));
    this.wave_retry_image = ((APImageView)findViewById(d.aO));
    this.button_background_image = ((APImageView)findViewById(d.m));
    this.white_image = ((APImageView)findViewById(d.aP));
    initAction();
  }

  public void pause()
  {
    a();
    setWavingState(false);
    this.wave_image_init_Layout.setVisibility(4);
    this.wave_retry_image.setVisibility(0);
    this.wave_image.setVisibility(4);
    b();
  }

  public void setWaveButtonListener(ag paramag)
  {
    this.waveButtonListener = paramag;
  }

  public void setWavingState(boolean paramBoolean)
  {
    new StringBuilder("statechanged,isWaveNow=").append(this.isWaveNow).append("after change=").append(paramBoolean).toString();
    this.isWaveNow = paramBoolean;
  }

  public void waveRetry()
  {
    a();
    setWavingState(true);
    this.timeOut = false;
    this.wave_image_init_Layout.setVisibility(4);
    this.wave_retry_image.setVisibility(4);
    this.wave_image.setVisibility(0);
    b();
    this.a = new Timer();
    this.task = new ae(this);
    this.a.schedule(this.task, 0L, 125L);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.payer.sound.SoundButtonActivity
 * JD-Core Version:    0.6.2
 */