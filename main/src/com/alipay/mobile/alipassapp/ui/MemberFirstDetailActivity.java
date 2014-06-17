package com.alipay.mobile.alipassapp.ui;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import com.alipay.mobile.alipassapp.R.color;
import com.alipay.mobile.alipassapp.R.drawable;
import com.alipay.mobile.alipassapp.R.id;
import com.alipay.mobile.alipassapp.R.layout;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.First;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.More;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.Operation.OperationString;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.Second;
import com.alipay.mobile.alipassapp.ui.common.a;
import com.alipay.mobile.alipassapp.ui.widget.AutoScaleTextView;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.commonui.widget.APImageView;
import com.alipay.mobile.commonui.widget.APLinearLayout;
import com.alipay.mobile.commonui.widget.APRelativeLayout;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.androidquery.AQuery;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class MemberFirstDetailActivity extends BaseActivity
{
  private static final String a = MemberFirstDetailActivity.class.getSimpleName();
  private static Handler b = new Handler();
  private Context c;
  private APLinearLayout d;
  private APLinearLayout e;
  private APRelativeLayout f;
  private APLinearLayout g;
  private APImageView h;
  private APTextView i;
  private APTextView j;
  private APRelativeLayout k;
  private AutoScaleTextView l;
  private APTextView m;
  private APTitleBar n;
  private APTextView o;

  private void a(AlipassInfo.More paramMore)
  {
    List localList = paramMore.getSecond();
    if ((localList == null) || (localList.size() <= 0))
    {
      this.e.setVisibility(8);
      this.o.setVisibility(8);
    }
    while (true)
    {
      return;
      Iterator localIterator1 = localList.iterator();
      while (localIterator1.hasNext())
      {
        AlipassInfo.Second localSecond = (AlipassInfo.Second)localIterator1.next();
        View localView1 = LayoutInflater.from(this).inflate(R.layout.member_first_detail_item, null);
        if (StringUtils.isNotBlank(localSecond.getLabel()))
          ((APTextView)localView1.findViewById(R.id.member_first_second_lable)).setText(localSecond.getLabel());
        if ((localSecond.getList() != null) && (localSecond.getList().size() > 0))
        {
          APLinearLayout localAPLinearLayout = (APLinearLayout)localView1.findViewById(R.id.layout_first_second_list);
          Iterator localIterator2 = localSecond.getList().iterator();
          label235: 
          while (localIterator2.hasNext())
          {
            String str = (String)localIterator2.next();
            if (StringUtils.isBlank(str));
            View localView2;
            for (Object localObject = null; ; localObject = localView2)
            {
              if (localObject == null)
                break label235;
              localAPLinearLayout.addView((View)localObject);
              break;
              localView2 = LayoutInflater.from(this).inflate(R.layout.member_first_detail_text_list_item, null);
              ((APTextView)localView2.findViewById(R.id.member_second_text)).setText(str);
            }
          }
        }
        APImageView localAPImageView = (APImageView)localView1.findViewById(R.id.member_first_second_divide);
        if (localList.size() == 1)
          localAPImageView.setVisibility(8);
        this.e.addView(localView1);
      }
    }
  }

  private static boolean a(String paramString)
  {
    String[] arrayOfString = { "barcode", "qrcode", "wave", "text" };
    int i1 = arrayOfString.length;
    for (int i2 = 0; i2 < i1; i2++)
      if (StringUtils.equals(arrayOfString[i2], paramString))
        return true;
    return false;
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.member_first_detail);
    this.c = this;
    this.n = ((APTitleBar)findViewById(R.id.tb_member_first_titlebar));
    this.d = ((APLinearLayout)findViewById(R.id.layout_member_first_first));
    this.e = ((APLinearLayout)findViewById(R.id.layout_member_first_second));
    this.f = ((APRelativeLayout)findViewById(R.id.layout_member_first_opt));
    this.g = ((APLinearLayout)findViewById(R.id.layout_member_first_altText));
    this.h = ((APImageView)findViewById(R.id.iv_member_first_icon));
    this.i = ((APTextView)findViewById(R.id.tv_member_first_lable));
    this.j = ((APTextView)findViewById(R.id.tv_member_first_value));
    this.k = ((APRelativeLayout)findViewById(R.id.layout_member_first_code));
    this.l = ((AutoScaleTextView)findViewById(R.id.tv_member_first_altText));
    this.m = ((APTextView)findViewById(R.id.tv_member_first_rootText));
    this.o = ((APTextView)findViewById(R.id.tx_member_first_remark));
    AlipassInfo.More localMore = (AlipassInfo.More)getIntent().getSerializableExtra("more");
    this.n.setTitleText(localMore.getTitle());
    AlipassInfo.First localFirst = localMore.getFirst();
    if (localFirst == null)
    {
      this.d.setVisibility(8);
      a(localMore);
      if ((localMore.getOperation() != null) && (localMore.getOperation().size() > 0) && (a(((AlipassInfo.Operation.OperationString)localMore.getOperation().get(0)).getFormat())))
        break label453;
      this.f.setVisibility(8);
      this.d.setBackgroundColor(getResources().getColor(R.color.membercard_layout_first));
    }
    label453: String str1;
    String str2;
    label652: label733: 
    do
    {
      String str4;
      APImageView localAPImageView2;
      do
      {
        String str3;
        APImageView localAPImageView3;
        do
        {
          return;
          if ((StringUtils.isBlank(localFirst.getLabel())) && (StringUtils.isBlank(localFirst.getValue())) && (StringUtils.isBlank(localFirst.getIcon())))
          {
            this.d.setVisibility(8);
            break;
          }
          if (StringUtils.isNotBlank(localFirst.getLabel()))
          {
            this.i.setText(localFirst.getLabel());
            this.i.setVisibility(0);
          }
          if (StringUtils.isNotBlank(localFirst.getValue()))
          {
            this.j.setText(localFirst.getValue());
            this.j.setVisibility(0);
          }
          if (!StringUtils.isNotBlank(localFirst.getIcon()))
            break;
          ((AQuery)new AQuery(this).id(this.h)).image(localFirst.getIcon(), true, true);
          this.h.setVisibility(0);
          break;
          this.d.setVisibility(0);
          AlipassInfo.Operation.OperationString localOperationString = (AlipassInfo.Operation.OperationString)localMore.getOperation().get(0);
          if (StringUtils.isBlank(localOperationString.getAltText()))
            this.l.setVisibility(8);
          while (true)
          {
            str1 = localOperationString.getFormat();
            str2 = localOperationString.getMessage();
            str3 = localOperationString.getAltText();
            str4 = localOperationString.getMessageEncoding();
            if (!StringUtils.equals(str1, "text"))
              break;
            this.g.setBackgroundColor(getResources().getColor(R.color.membercard_layout_first_alttext));
            this.l.setBackgroundDrawable(getResources().getDrawable(R.drawable.detail_textcode_repeat));
            return;
            this.l.setText(localOperationString.getAltText());
          }
          if (!StringUtils.equals(str1, "barcode"))
            break label652;
          localAPImageView3 = (APImageView)LayoutInflater.from(this).inflate(R.layout.member_image_barcode, null);
          this.k.addView(localAPImageView3);
        }
        while (!StringUtils.isNotBlank(str2));
        new Thread(new fd(this, str2, localAPImageView3, str3)).start();
        return;
        if (!StringUtils.equals(str1, "qrcode"))
          break label733;
        localAPImageView2 = (APImageView)LayoutInflater.from(this).inflate(R.layout.member_image_qrcode, null);
        this.k.addView(localAPImageView2);
        if (StringUtils.isBlank(str4))
          str4 = "utf-8";
      }
      while (!StringUtils.isNotBlank(str2));
      new Thread(new ff(this, str2, str4, localAPImageView2)).start();
      return;
    }
    while (!StringUtils.equals(str1, "wave"));
    APImageView localAPImageView1 = (APImageView)LayoutInflater.from(this).inflate(R.layout.member_image_wave, null);
    localAPImageView1.setImageResource(R.drawable.wave_btn);
    while (true)
    {
      int i1;
      int i2;
      try
      {
        new StringBuilder("waveMsg = ").append(str2).toString();
        if (!StringUtils.isNotBlank(str2))
          break;
        i1 = str2.length();
        if (i1 <= 16)
        {
          i2 = 1;
          if (i2 == 0)
            break;
          this.m.setText("点击按钮后靠近商户感应区,使用特权");
          this.k.addView(localAPImageView1);
          localAPImageView1.setOnClickListener(new a(this.c, "wave", str2.trim(), this.mApp));
          return;
        }
      }
      catch (Exception localException)
      {
        localException.getMessage();
        return;
      }
      if ((i1 > 16) && (i1 <= 32))
      {
        boolean bool = Pattern.compile("^[a-f1-9A-F][a-f0-9A-F]{15,31}$", 2).matcher(str2.trim()).find();
        i2 = bool;
      }
      else
      {
        i2 = 0;
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.MemberFirstDetailActivity
 * JD-Core Version:    0.6.2
 */