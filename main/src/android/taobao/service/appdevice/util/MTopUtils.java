package android.taobao.service.appdevice.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;

public class MTopUtils
{
  public static final String MTOP_ADVANCE_URL = "http://api.wapa.taobao.com/rest/api3.do";
  public static final String MTOP_TEST_URL = "http://api.waptest.taobao.com/rest/api3.do";
  public static final String MTOP_URL = "http://api.m.taobao.com/rest/api3.do";
  public static final String TYPE_ADVANCE = "2";
  public static final String TYPE_NORMAL = "0";
  public static final String TYPE_TEST = "1";

  public static String getMTopUrl(Context paramContext)
  {
    String str = paramContext.getSharedPreferences("MTOP_URL_TYPE_STORAGE", 0).getString("MTOP_URL_TYPE", "0");
    if (TextUtils.equals(str, "1"))
      return "http://api.waptest.taobao.com/rest/api3.do";
    if (TextUtils.equals(str, "2"))
      return "http://api.wapa.taobao.com/rest/api3.do";
    return "http://api.m.taobao.com/rest/api3.do";
  }

  public static void setMTopUrlType(Context paramContext, String paramString)
  {
    SharedPreferences.Editor localEditor = paramContext.getSharedPreferences("MTOP_URL_TYPE_STORAGE", 0).edit();
    localEditor.putString("MTOP_URL_TYPE", paramString);
    localEditor.commit();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     android.taobao.service.appdevice.util.MTopUtils
 * JD-Core Version:    0.6.2
 */