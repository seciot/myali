package com.alipay.mobile.alipassapp.ui.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.Path.Direction;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import com.alipay.mobile.alipassapp.R.drawable;
import com.alipay.mobile.alipassapp.R.id;
import com.alipay.mobile.alipassapp.R.layout;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.AliPassBaseInfo;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.DisplayInfo;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.commonui.widget.APImageView;
import com.alipay.mobile.commonui.widget.APLinearLayout;
import com.alipay.mobile.commonui.widget.APTextView;
import com.androidquery.AQuery;
import com.androidquery.callback.ImageOptions;

public class MemberCardHeaderLayout extends APLinearLayout
{
  private static Bitmap bmLogoDefault;
  private APImageView ivLogo;
  private APImageView ivLogoDefault;
  private APImageView ivNew;
  private APTextView tvLogoText;

  public MemberCardHeaderLayout(Context paramContext)
  {
    this(paramContext, null);
  }

  public MemberCardHeaderLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    View localView = LayoutInflater.from(getContext()).inflate(R.layout.sub_membercard_header, null);
    addView(localView);
    this.ivLogo = ((APImageView)localView.findViewById(R.id.iv_logo));
    this.tvLogoText = ((APTextView)localView.findViewById(R.id.tv_logotext));
    this.ivNew = ((APImageView)localView.findViewById(R.id.iv_new));
    this.ivLogoDefault = ((APImageView)localView.findViewById(R.id.iv_logo_default));
    createRoundCornerBitmap();
    this.ivLogoDefault.setImageBitmap(bmLogoDefault);
  }

  private void createRoundCornerBitmap()
  {
    if ((bmLogoDefault == null) || (bmLogoDefault.isRecycled()))
    {
      Bitmap localBitmap = BitmapFactory.decodeResource(getResources(), R.drawable.membercard_icon_back);
      bmLogoDefault = Bitmap.createBitmap(localBitmap.getWidth(), localBitmap.getHeight(), Bitmap.Config.ARGB_8888);
      Canvas localCanvas = new Canvas(bmLogoDefault);
      RectF localRectF = new RectF(0.0F, 0.0F, bmLogoDefault.getWidth(), bmLogoDefault.getHeight());
      Path localPath = new Path();
      localPath.addRoundRect(localRectF, new float[] { 20.0F, 20.0F, 20.0F, 20.0F, 20.0F, 20.0F, 20.0F, 20.0F }, Path.Direction.CW);
      localCanvas.save();
      localCanvas.clipPath(localPath);
      localCanvas.drawBitmap(localBitmap, 0.0F, 0.0F, null);
      localCanvas.restore();
    }
  }

  private void initInfoFields()
  {
    this.tvLogoText.setText("");
    this.ivNew.setVisibility(4);
  }

  public void refresh(AlipassInfo.AliPassBaseInfo paramAliPassBaseInfo)
  {
    if (paramAliPassBaseInfo == null)
      return;
    String str1;
    APImageView localAPImageView;
    if (paramAliPassBaseInfo.getDisplayInfo() != null)
    {
      str1 = paramAliPassBaseInfo.getDisplayInfo().getLogo();
      String str2 = paramAliPassBaseInfo.getLogoText();
      initInfoFields();
      ImageOptions localImageOptions = new ImageOptions();
      localImageOptions.fileCache = true;
      localImageOptions.memCache = true;
      localImageOptions.round = 5;
      ((AQuery)new AQuery(getContext()).id(this.ivLogo)).image(str1, localImageOptions);
      if (!StringUtils.isEmpty(str2))
        this.tvLogoText.setText(str2);
      localAPImageView = this.ivNew;
      if (paramAliPassBaseInfo.getIsreaded() != 0)
        break label129;
    }
    label129: for (int i = 0; ; i = 4)
    {
      localAPImageView.setVisibility(i);
      return;
      str1 = "";
      break;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.widget.MemberCardHeaderLayout
 * JD-Core Version:    0.6.2
 */