package com.alipay.mobile.mobilerechargeapp.adapter;

import android.content.Context;
import android.content.res.Resources;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.alipay.mobile.commonui.widget.APImageView;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.mobilerechargeapp.R.color;
import com.alipay.mobile.mobilerechargeapp.R.id;
import com.alipay.mobile.mobilerechargeapp.R.layout;
import com.alipay.mobileprod.biz.recharge.vo.EcardVO;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class RechargeAmountAdapter extends BaseAdapter
{
  private Context a;
  private List b = new ArrayList();
  private LayoutInflater c;

  public RechargeAmountAdapter(Context paramContext)
  {
    this.a = paramContext;
    this.c = LayoutInflater.from(this.a);
  }

  private static boolean a(EcardVOWrapper paramEcardVOWrapper)
  {
    try
    {
      float f1 = Float.valueOf(paramEcardVOWrapper.d()).floatValue();
      float f2 = Float.valueOf(paramEcardVOWrapper.a()).floatValue();
      if (f1 < f2)
        return true;
    }
    catch (Exception localException)
    {
    }
    return false;
  }

  public final void a(List paramList)
  {
    this.b = paramList;
    notifyDataSetChanged();
  }

  public final void b(List paramList)
  {
    if (paramList == null);
    ArrayList localArrayList;
    for (Object localObject = new ArrayList(); ; localObject = localArrayList)
    {
      a((List)localObject);
      return;
      localArrayList = new ArrayList();
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        EcardVO localEcardVO = (EcardVO)localIterator.next();
        if ((!localEcardVO.getFacePrice().equals("1")) && (!localEcardVO.getFacePrice().equals("1000")))
          localArrayList.add(new EcardVOWrapper(localEcardVO));
      }
    }
  }

  public int getCount()
  {
    return this.b.size();
  }

  public View getDropDownView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null)
      paramView = this.c.inflate(17367058, null);
    TextView localTextView = (TextView)paramView.findViewById(16908308);
    localTextView.setText(((EcardVOWrapper)this.b.get(paramInt)).h());
    localTextView.setTextSize(15.0F);
    paramView.setClickable(((EcardVOWrapper)this.b.get(paramInt)).f());
    return paramView;
  }

  public Object getItem(int paramInt)
  {
    return this.b.get(paramInt);
  }

  public long getItemId(int paramInt)
  {
    return -1L;
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null)
      paramView = this.c.inflate(R.layout.Loadable, null);
    EcardVOWrapper localEcardVOWrapper = (EcardVOWrapper)this.b.get(paramInt);
    APTextView localAPTextView1 = (APTextView)paramView.findViewById(R.id.K);
    APTextView localAPTextView2 = (APTextView)paramView.findViewById(R.id.L);
    APImageView localAPImageView = (APImageView)paramView.findViewById(R.id.H);
    if ((((EcardVOWrapper)this.b.get(paramInt)).g()) && (((EcardVOWrapper)this.b.get(paramInt)).f()))
    {
      localAPTextView1.setText("请选择充值面额");
      if ((!localEcardVOWrapper.g()) || (localEcardVOWrapper.f()))
        break label265;
      localAPTextView2.setVisibility(0);
      if (!a(localEcardVOWrapper))
        break label258;
    }
    label258: for (String str1 = "优惠价："; ; str1 = "售价：")
    {
      String str2 = str1 + localEcardVOWrapper.j();
      SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder(str2);
      localSpannableStringBuilder.setSpan(new ForegroundColorSpan(this.a.getResources().getColor(R.color.BundlesManager)), str1.length(), str2.length(), 18);
      localAPTextView2.setText(localSpannableStringBuilder);
      localAPImageView.setVisibility(0);
      return paramView;
      localAPTextView1.setText(((EcardVOWrapper)this.b.get(paramInt)).i());
      break;
    }
    label265: localAPTextView2.setVisibility(4);
    localAPTextView2.setText("");
    localAPImageView.setVisibility(4);
    return paramView;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.mobilerechargeapp.adapter.RechargeAmountAdapter
 * JD-Core Version:    0.6.2
 */