package com.alipay.mobile.alipassapp.ui.common;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.os.Handler;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView.ScaleType;
import android.widget.RelativeLayout.LayoutParams;
import com.alipay.mobile.alipassapp.R.color;
import com.alipay.mobile.alipassapp.R.drawable;
import com.alipay.mobile.alipassapp.R.id;
import com.alipay.mobile.alipassapp.R.layout;
import com.alipay.mobile.alipassapp.R.string;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.AliPassBaseInfo;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.DisplayInfo;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.Operation;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.Operation.OperationApp;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.Operation.OperationImg;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.Operation.OperationImg.MessageText;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.Operation.OperationString;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.Operation.OperationText;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.Operation.OperationText.MessageText;
import com.alipay.mobile.alipassapp.ui.widget.AutoScaleTextView;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APImageView;
import com.alipay.mobile.commonui.widget.APLinearLayout;
import com.alipay.mobile.commonui.widget.APRelativeLayout;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.discoverycommon.api.service.AlipassPayBridgeService;
import com.alipay.mobile.discoverycommon.api.service.CreateDynamicCodeService;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.androidquery.AQuery;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class AlipassOperationViewPager extends ViewPager
{
  static final int MAX_SIZE = 4;
  private static final String TAG = AlipassOperationViewPager.class.getSimpleName();
  public static Bitmap barCodeImg = null;
  private static Handler mHandler = new Handler();
  public static Bitmap qcodeImg = null;
  private AlipassInfo alipassInfo;
  private AlipassPayBridgeService alipassPayBridgeService;
  private CreateDynamicCodeService createDynamicCodeService;
  private HashMap<Object, au> imageBiggerClickMap = new HashMap();
  private ActivityApplication mApp;
  private Context mContext;
  private APImageView[] mImageViews;
  private ArrayList<View> mOperationView = new ArrayList();
  private PagerAdapter pagerAdapter = new ad(this, (byte)0);
  private Handler receiveDynamicCodeHandler = new q(this);

  public AlipassOperationViewPager(Context paramContext)
  {
    this(paramContext, null);
  }

  public AlipassOperationViewPager(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.mContext = paramContext;
    setOnPageChangeListener(new r(this));
  }

  private void addOperationLog(BehaviourIdEnum paramBehaviourIdEnum, AlipassInfo paramAlipassInfo, String paramString)
  {
    try
    {
      Boolean localBoolean = Boolean.valueOf(false);
      String str1 = "";
      String str2 = "";
      if (StringUtils.equalsIgnoreCase(paramAlipassInfo.getBizType(), "COUPON"))
      {
        localBoolean = Boolean.valueOf(true);
        str1 = "20000030";
        str2 = "couponDetails";
      }
      while (localBoolean.booleanValue())
      {
        AlipayApplication localAlipayApplication = AlipayApplication.getInstance();
        String[] arrayOfString = new String[2];
        arrayOfString[0] = paramAlipassInfo.getPassBaseInfo().getPassId();
        arrayOfString[1] = paramAlipassInfo.getPassBaseInfo().getPartnerId();
        AlipayLogAgent.writeLog(localAlipayApplication, paramBehaviourIdEnum, "", "", str1, "", "", str2, paramString, "", "", "", arrayOfString);
        return;
        if (StringUtils.equalsIgnoreCase(paramAlipassInfo.getBizType(), "TRAVEL"))
        {
          localBoolean = Boolean.valueOf(true);
          str1 = "20000021";
          str2 = "travelItineraryDetails";
        }
      }
    }
    catch (Exception localException)
    {
    }
  }

  private void initImageViews(ViewGroup paramViewGroup)
  {
    if (paramViewGroup == null);
    while (this.mOperationView.size() <= 1)
      return;
    this.mImageViews = new APImageView[this.mOperationView.size()];
    int i = 0;
    label32: APImageView localAPImageView;
    if (i < this.mOperationView.size())
    {
      localAPImageView = new APImageView(this.mContext);
      localAPImageView.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
      localAPImageView.setPadding(5, 5, 5, 5);
      localAPImageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
      this.mImageViews[i] = localAPImageView;
      if (i != 0)
        break label119;
      this.mImageViews[i].setImageResource(R.drawable.guide_dot_white);
    }
    while (true)
    {
      paramViewGroup.addView(localAPImageView);
      i++;
      break label32;
      break;
      label119: this.mImageViews[i].setImageResource(R.drawable.guide_dot_black);
    }
  }

  private void setText(APTextView paramAPTextView)
  {
    if (StringUtils.equalsIgnoreCase(this.alipassInfo.getBizType(), "COUPON"))
      paramAPTextView.setText(R.string.coupon_dynamic_error);
    while (!StringUtils.equalsIgnoreCase(this.alipassInfo.getBizType(), "TRAVEL"))
      return;
    paramAPTextView.setText(R.string.travel_dynamic_error);
  }

  public void refresh(List<AlipassInfo.Operation> paramList, AlipassInfo.DisplayInfo paramDisplayInfo, ViewGroup paramViewGroup)
  {
    this.imageBiggerClickMap.clear();
    if (this.createDynamicCodeService != null)
      this.createDynamicCodeService.onDestroy();
    setOperationFields(paramList, paramViewGroup);
  }

  public void setOperationFields(List<AlipassInfo.Operation> paramList, ViewGroup paramViewGroup)
  {
    if ((paramList != null) && (!paramList.isEmpty()))
    {
      this.mOperationView.clear();
      int i = 0;
      if (i < paramList.size())
      {
        AlipassInfo.Operation.OperationText localOperationText;
        View localView11;
        APLinearLayout localAPLinearLayout;
        if ("text".equals(((AlipassInfo.Operation)paramList.get(i)).getFormat()))
        {
          localOperationText = (AlipassInfo.Operation.OperationText)paramList.get(i);
          localView11 = LayoutInflater.from(this.mContext).inflate(R.layout.sub_alipass_operation_text_layout, null);
          localAPLinearLayout = new APLinearLayout(this.mContext);
          RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-2, -2);
          localLayoutParams.addRule(13);
          localAPLinearLayout.setLayoutParams(localLayoutParams);
          localAPLinearLayout.setOrientation(1);
        }
        while (true)
        {
          try
          {
            if (localOperationText.getMessage() != null)
            {
              Iterator localIterator = localOperationText.getMessage().iterator();
              int i1 = 1;
              if (localIterator.hasNext())
              {
                AlipassInfo.Operation.OperationText.MessageText localMessageText = (AlipassInfo.Operation.OperationText.MessageText)localIterator.next();
                if (i1 <= 4)
                {
                  View localView12 = LayoutInflater.from(this.mContext).inflate(R.layout.sub_alipass_operation_text, null);
                  ((AutoScaleTextView)localView12.findViewById(R.id.tv_label)).setText(localMessageText.getLabel() + "：");
                  ((AutoScaleTextView)localView12.findViewById(R.id.tv_value)).setText(localMessageText.getValue());
                  if (StringUtils.isEmpty(localMessageText.getLabel()))
                    ((AutoScaleTextView)localView12.findViewById(R.id.tv_label)).setVisibility(8);
                  localAPLinearLayout.addView(localView12);
                  i1++;
                  continue;
                }
              }
            }
            ((APRelativeLayout)localView11.findViewById(R.id.layout_text)).addView(localAPLinearLayout);
            this.mOperationView.add(localView11);
            i++;
          }
          catch (Exception localException6)
          {
            localException6.getMessage();
            continue;
          }
          if ("barcode".equals(((AlipassInfo.Operation)paramList.get(i)).getFormat()))
          {
            AlipassInfo.Operation.OperationString localOperationString7 = (AlipassInfo.Operation.OperationString)paramList.get(i);
            View localView10 = LayoutInflater.from(this.mContext).inflate(R.layout.sub_alipass_operation_barcode, null);
            APImageView localAPImageView7 = (APImageView)localView10.findViewById(R.id.iv_barcode);
            ((AutoScaleTextView)localView10.findViewById(R.id.tv_barcode_altText)).setText(localOperationString7.getAltText());
            this.mOperationView.add(localView10);
            if ((localOperationString7.getMessage() != null) && (localOperationString7.getMessage().trim().length() > 0))
              new Thread(new s(this, localOperationString7, localAPImageView7)).start();
          }
          else if ("qrcode".equals(((AlipassInfo.Operation)paramList.get(i)).getFormat()))
          {
            AlipassInfo.Operation.OperationString localOperationString6 = (AlipassInfo.Operation.OperationString)paramList.get(i);
            View localView9 = LayoutInflater.from(this.mContext).inflate(R.layout.sub_alipass_operation_qrcode, null);
            APImageView localAPImageView6 = (APImageView)localView9.findViewById(R.id.iv_qrcode);
            if ((localOperationString6.getAltText() != null) && (!localOperationString6.getAltText().equals("")))
            {
              AutoScaleTextView localAutoScaleTextView3 = (AutoScaleTextView)localView9.findViewById(R.id.tv_qrcode_altText);
              localAutoScaleTextView3.setVisibility(0);
              localAutoScaleTextView3.setText(localOperationString6.getAltText());
            }
            this.mOperationView.add(localView9);
            String str2 = localOperationString6.getMessageEncoding();
            if ((str2 == null) || (str2.trim().length() == 0))
              str2 = "utf-8";
            if ((localOperationString6.getMessage() != null) && (localOperationString6.getMessage().trim().length() > 0))
              new Thread(new v(this, localOperationString6, str2, localAPImageView6)).start();
          }
          else if ("app".equals(((AlipassInfo.Operation)paramList.get(i)).getFormat()))
          {
            AlipassInfo.Operation.OperationApp localOperationApp = (AlipassInfo.Operation.OperationApp)paramList.get(i);
            View localView8 = LayoutInflater.from(this.mContext).inflate(R.layout.sub_alipass_operation_app, null);
            try
            {
              if ((localOperationApp.getAltText() == null) || (localOperationApp.getAltText().trim().length() <= 0))
                continue;
              ((APButton)localView8.findViewById(R.id.btn_app)).setText(localOperationApp.getAltText());
              ((APButton)localView8.findViewById(R.id.btn_app)).setOnClickListener(new ac(this, localOperationApp));
              this.mOperationView.add(localView8);
            }
            catch (Exception localException5)
            {
              localException5.getMessage();
            }
          }
          else if ("url".equalsIgnoreCase(((AlipassInfo.Operation)paramList.get(i)).getFormat()))
          {
            AlipassInfo.Operation.OperationString localOperationString5 = (AlipassInfo.Operation.OperationString)paramList.get(i);
            View localView7 = LayoutInflater.from(this.mContext).inflate(R.layout.sub_alipass_operation_app, null);
            try
            {
              APButton localAPButton = (APButton)localView7.findViewById(R.id.btn_app);
              localAPButton.setText(localOperationString5.getAltText());
              localAPButton.setTextColor(this.mContext.getResources().getColor(R.color.url_text_color));
              localAPButton.setOnClickListener(new a(this.mContext, "url", localOperationString5.getMessage(), null, null, this.mApp));
              this.mOperationView.add(localView7);
            }
            catch (Exception localException4)
            {
              localException4.getMessage();
            }
          }
          else if ("stamp".equals(((AlipassInfo.Operation)paramList.get(i)).getFormat()))
          {
            AlipassInfo.Operation.OperationString localOperationString4 = (AlipassInfo.Operation.OperationString)paramList.get(i);
            View localView6 = LayoutInflater.from(this.mContext).inflate(R.layout.sub_alipass_operation_stamp, null);
            try
            {
              if (!i.a.containsKey(localOperationString4.getMessage()))
                continue;
              ((AQuery)new AQuery(this.mContext).id(localView6.findViewById(R.id.iv_stamp))).image(((Integer)i.a.get(localOperationString4.getMessage())).intValue());
              this.mOperationView.add(localView6);
            }
            catch (Exception localException3)
            {
              localException3.getMessage();
            }
          }
          else
          {
            if ("wave".equals(((AlipassInfo.Operation)paramList.get(i)).getFormat()))
            {
              AlipassInfo.Operation.OperationString localOperationString3 = (AlipassInfo.Operation.OperationString)paramList.get(i);
              View localView5 = LayoutInflater.from(this.mContext).inflate(R.layout.sub_alipass_operation_wave, null);
              APImageView localAPImageView5 = (APImageView)localView5.findViewById(R.id.iv_wave);
              while (true)
              {
                String str1;
                int m;
                try
                {
                  str1 = localOperationString3.getMessage();
                  new StringBuilder("waveMsg = ").append(str1).toString();
                  if ((str1 == null) || (str1.trim().length() <= 0))
                    break;
                  m = str1.length();
                  if (m > 16)
                    break label1350;
                  n = 1;
                  if (n == 0)
                    break;
                  if ((localOperationString3.getAltText() != null) && (!localOperationString3.getAltText().equals("")))
                  {
                    AutoScaleTextView localAutoScaleTextView2 = (AutoScaleTextView)localView5.findViewById(R.id.tv_wave_altText);
                    localAutoScaleTextView2.setVisibility(0);
                    localAutoScaleTextView2.setText(localOperationString3.getAltText());
                  }
                  localAPImageView5.setOnClickListener(new y(this, this.mContext, "wave", str1.trim(), this.mApp));
                  this.mOperationView.add(localView5);
                }
                catch (Exception localException2)
                {
                  localException2.getMessage();
                }
                break;
                label1350: int n = 0;
                if (m > 16)
                {
                  n = 0;
                  if (m <= 32)
                  {
                    boolean bool = Pattern.compile("^[a-f1-9A-F][a-f0-9A-F]{15,31}$", 2).matcher(str1.trim()).find();
                    n = bool;
                  }
                }
              }
            }
            if ("img".equals(((AlipassInfo.Operation)paramList.get(i)).getFormat()))
            {
              AlipassInfo.Operation.OperationImg localOperationImg = (AlipassInfo.Operation.OperationImg)paramList.get(i);
              View localView4 = LayoutInflater.from(this.mContext).inflate(R.layout.sub_alipass_operation_qrcode, null);
              APImageView localAPImageView3 = (APImageView)localView4.findViewById(R.id.iv_qrcode);
              APImageView localAPImageView4 = (APImageView)localView4.findViewById(R.id.iv_default);
              try
              {
                if ((localOperationImg.getAltText() != null) && (!localOperationImg.getAltText().equals("")))
                {
                  AutoScaleTextView localAutoScaleTextView1 = (AutoScaleTextView)localView4.findViewById(R.id.tv_qrcode_altText);
                  localAutoScaleTextView1.setVisibility(0);
                  localAutoScaleTextView1.setText(localOperationImg.getAltText());
                }
                if ((localOperationImg.getMessage() != null) && (localOperationImg.getMessage().getImg() != null) && (localOperationImg.getMessage().getImg().trim().length() > 0))
                {
                  localAPImageView4.setVisibility(0);
                  new Thread(new z(this, localOperationImg, localAPImageView3, localAPImageView4)).start();
                }
                this.mOperationView.add(localView4);
              }
              catch (Exception localException1)
              {
                localException1.getMessage();
              }
            }
            else
            {
              if (StringUtils.equalsIgnoreCase(((AlipassInfo.Operation)paramList.get(i)).getFormat(), "dbarcode"))
              {
                AlipassInfo.Operation.OperationString localOperationString2 = (AlipassInfo.Operation.OperationString)paramList.get(i);
                View localView3 = LayoutInflater.from(this.mContext).inflate(R.layout.sub_alipass_operation_barcode, null);
                localView3.setTag(Long.valueOf(UUID.randomUUID().getLeastSignificantBits()));
                APImageView localAPImageView2 = (APImageView)localView3.findViewById(R.id.iv_barcode);
                setText((APTextView)localView3.findViewById(R.id.tv_dbarcode_msg));
                localView3.findViewById(R.id.tv_dbarcode_msg).setVisibility(8);
                if (localView3.findViewById(R.id.tv_dbarcode_msg).getVisibility() == 0);
                for (int k = 8; ; k = 0)
                {
                  localAPImageView2.setVisibility(k);
                  au localau2 = new au(this.mContext, "", true);
                  this.imageBiggerClickMap.put(localView3.getTag(), localau2);
                  localAPImageView2.setOnClickListener(localau2);
                  this.mOperationView.add(localView3);
                  if (this.createDynamicCodeService == null)
                    break;
                  this.createDynamicCodeService.startGetDynamicCode(localView3.getTag());
                  this.createDynamicCodeService.update(localOperationString2.getFormat(), localView3.getTag(), localOperationString2.getMessageEncoding());
                  break;
                }
              }
              if (StringUtils.equalsIgnoreCase(((AlipassInfo.Operation)paramList.get(i)).getFormat(), "dqrcode"))
              {
                AlipassInfo.Operation.OperationString localOperationString1 = (AlipassInfo.Operation.OperationString)paramList.get(i);
                View localView2 = LayoutInflater.from(this.mContext).inflate(R.layout.sub_alipass_operation_qrcode, null);
                localView2.setTag(Long.valueOf(UUID.randomUUID().getLeastSignificantBits()));
                APImageView localAPImageView1 = (APImageView)localView2.findViewById(R.id.iv_qrcode);
                localView2.findViewById(R.id.tv_qrcode_altText).setVisibility(0);
                setText((APTextView)localView2.findViewById(R.id.tv_dqrocde_msg));
                localView2.findViewById(R.id.tv_dqrocde_msg).setVisibility(8);
                if (localView2.findViewById(R.id.tv_dqrocde_msg).getVisibility() == 0);
                for (int j = 8; ; j = 0)
                {
                  localAPImageView1.setVisibility(j);
                  au localau1 = new au(this.mContext, "", false);
                  this.imageBiggerClickMap.put(localView2.getTag(), localau1);
                  localAPImageView1.setOnClickListener(localau1);
                  this.mOperationView.add(localView2);
                  if (this.createDynamicCodeService == null)
                    break;
                  this.createDynamicCodeService.startGetDynamicCode(localView2.getTag());
                  this.createDynamicCodeService.update(localOperationString1.getFormat(), localView2.getTag(), localOperationString1.getMessageEncoding());
                  break;
                }
              }
              if (StringUtils.equals(((AlipassInfo.Operation)paramList.get(i)).getFormat(), "dwave"))
              {
                View localView1 = LayoutInflater.from(this.mContext).inflate(R.layout.sub_alipass_operation_wave, null);
                ((APImageView)localView1.findViewById(R.id.iv_wave)).setOnClickListener(new ab(this));
                this.mOperationView.add(localView1);
              }
            }
          }
        }
      }
    }
    initImageViews(paramViewGroup);
    setAdapter(this.pagerAdapter);
  }

  public void setmApp(ActivityApplication paramActivityApplication, AlipassInfo paramAlipassInfo, CreateDynamicCodeService paramCreateDynamicCodeService, AlipassPayBridgeService paramAlipassPayBridgeService)
  {
    this.mApp = paramActivityApplication;
    this.alipassInfo = paramAlipassInfo;
    this.createDynamicCodeService = paramCreateDynamicCodeService;
    if (this.createDynamicCodeService != null)
      this.createDynamicCodeService.setHandler(this.receiveDynamicCodeHandler);
    this.alipassPayBridgeService = paramAlipassPayBridgeService;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.common.AlipassOperationViewPager
 * JD-Core Version:    0.6.2
 */