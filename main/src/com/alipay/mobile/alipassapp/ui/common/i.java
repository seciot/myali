package com.alipay.mobile.alipassapp.ui.common;

import com.alipay.mobile.alipassapp.R.drawable;
import java.util.HashMap;
import java.util.Map;

public final class i
{
  public static final Map<String, Integer> a;

  static
  {
    HashMap localHashMap = new HashMap();
    a = localHashMap;
    localHashMap.put("can_use", Integer.valueOf(R.drawable.coupon_stamp_canuse));
    a.put("used", Integer.valueOf(R.drawable.coupon_stamp_used));
    a.put("expired", Integer.valueOf(R.drawable.coupon_stamp_expired));
    a.put("invalid", Integer.valueOf(R.drawable.coupon_stamp_invalidate));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.common.i
 * JD-Core Version:    0.6.2
 */