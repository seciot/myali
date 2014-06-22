package com.alipay.mobile.alipassapp.viewcontrol;

import android.content.Context;
import android.content.res.Resources;
import android.text.SpannableString;
import android.text.method.LinkMovementMethod;
import android.text.util.Linkify;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.alipay.mobile.alipassapp.R.id;
import com.alipay.mobile.alipassapp.R.layout;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.EinfoFields;
import com.alipay.mobile.commonui.widget.APTextView;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class l extends BaseAdapter
{
  List<AlipassInfo.EinfoFields> a = new ArrayList();

  public l(List<AlipassInfo.EinfoFields> paramList)
  {
    Object localObject;
    if (localObject != null)
      this.a = localObject;
  }

  public final int getCount()
  {
    return this.a.size();
  }

  public final Object getItem(int paramInt)
  {
    return this.a.get(paramInt);
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    o localo1;
    AlipassInfo.EinfoFields localEinfoFields;
    int i;
    if (paramView == null)
    {
      paramView = LayoutInflater.from(this.b.a).inflate(R.layout.sub_alipass_info_field_vertical, null);
      o localo2 = new o(this, (byte)0);
      int m = R.id.tv_label;
      localo2.a = ((APTextView)paramView.findViewById(m));
      int n = R.id.tv_value;
      localo2.b = ((APTextView)paramView.findViewById(n));
      paramView.setTag(localo2);
      localo1 = localo2;
      localo1.a.setText("");
      localo1.b.setText("");
      localo1.b.setAutoLinkMask(0);
      localo1.b.setOnClickListener(null);
      localo1.b.setCompoundDrawablesWithIntrinsicBounds(null, null, null, null);
      localEinfoFields = (AlipassInfo.EinfoFields)this.a.get(paramInt);
      if (localEinfoFields != null)
      {
        localo1.b.setTextColor(com.alipay.mobile.alipassapp.ui.common.a.v(this.b.a, localEinfoFields));
        localo1.a.setText(localEinfoFields.getLabel());
        localo1.b.setText(localEinfoFields.getValue());
        i = com.alipay.mobile.alipassapp.ui.common.a.dexopt(localEinfoFields.getType());
        if (i == -1)
        {
          if (!Linkify.addLinks(localo1.b, 1))
            break label365;
          com.alipay.mobile.alipassapp.ui.common.a.a(this.b.a, localEinfoFields.getValue(), localo1.b, this.b.b);
        }
      }
    }
    while (true)
    {
      if ((localEinfoFields.getValue() != null) && (localEinfoFields.getValue().length() > 0))
      {
        if (i > 0)
          localo1.b.setCompoundDrawablesWithIntrinsicBounds(this.b.a.getResources().getDrawable(i), null, null, null);
        localo1.b.setGravity(16);
        localo1.b.setOnClickListener(new com.alipay.mobile.alipassapp.ui.common.a(this.b.a, localEinfoFields.getType(), localEinfoFields.getValue(), this.b.b));
      }
      return paramView;
      localo1 = (o)paramView.getTag();
      break;
      label365: localo1.b.setAutoLinkMask(15);
      String str1 = localEinfoFields.getValue();
      APTextView localAPTextView = localo1.b;
      if ((str1 != null) && (str1.trim().length() != 0))
      {
        ArrayList localArrayList = new ArrayList();
        Matcher localMatcher = Pattern.compile("maps:" + ".*?\n").matcher(str1);
        for (int j = 1; localMatcher.find(); j++)
          localArrayList.add(new m(this, localMatcher.group().replace("maps:", ""), localMatcher.start() - "maps:".length() * (j - 1), -1 + (localMatcher.end() - j * "maps:".length())));
        String str2 = str1.replaceAll("maps:", "");
        SpannableString localSpannableString = new SpannableString(str2);
        int k = 0;
        try
        {
          while (k < localArrayList.size())
          {
            localSpannableString.setSpan(new n(this, new com.alipay.mobile.alipassapp.ui.common.a(this.b.a, "map", ((m)localArrayList.get(k)).a, this.b.b)), ((m)localArrayList.get(k)).b, ((m)localArrayList.get(k)).c, 33);
            k++;
          }
          localAPTextView.setText(localSpannableString);
          localAPTextView.setMovementMethod(LinkMovementMethod.getInstance());
        }
        catch (Exception localException)
        {
          localAPTextView.setText(str2);
        }
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.viewcontrol.l
 * JD-Core Version:    0.6.2
 */