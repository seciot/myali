package com.alipay.mobile.alipassapp.ui.common;

import com.alipay.mobile.alipassapp.viewcontrol.BoardingPassViewControl;
import com.alipay.mobile.alipassapp.viewcontrol.CouponViewControl;
import com.alipay.mobile.alipassapp.viewcontrol.EventTicketViewControl;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class aq
{
  public static final Map<String, String> a;
  public static final List<String> b;

  static
  {
    HashMap localHashMap = new HashMap();
    a = localHashMap;
    localHashMap.put("coupon", CouponViewControl.class.getName());
    a.put("boardingPass", BoardingPassViewControl.class.getName());
    a.put("eventTicket", EventTicketViewControl.class.getName());
    ArrayList localArrayList = new ArrayList();
    b = localArrayList;
    localArrayList.add("tourist");
    b.add("hotel");
    b.add("boarding");
    b.add("air");
    b.add("train");
    b.add("bus");
    b.add("ship");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.common.aq
 * JD-Core Version:    0.6.2
 */