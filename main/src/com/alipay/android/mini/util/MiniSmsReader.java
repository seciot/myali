package com.alipay.android.mini.util;

import android.text.TextUtils;
import com.alipay.android.app.data.ValidatedFrameData;
import com.alipay.android.app.util.LogUtils;
import com.alipay.android.lib.phone.SmsReader;
import com.alipay.android.mini.event.MiniReadSmsArgs;
import com.alipay.android.mini.window.IUIForm;
import org.json.JSONArray;
import org.json.JSONObject;

public class MiniSmsReader
{
  private boolean a = false;
  private SmsReader b;
  private MiniReadSmsArgs c;
  private String d;
  private String e;
  private int f;
  private int g;
  private String h;
  private ValidatedFrameData i = null;
  private IUIForm j = null;

  public MiniSmsReader(JSONObject paramJSONObject, String paramString, ValidatedFrameData paramValidatedFrameData, IUIForm paramIUIForm)
  {
    this.h = paramString;
    this.i = paramValidatedFrameData;
    this.j = paramIUIForm;
    JSONObject localJSONObject = paramJSONObject.optJSONObject("smsread");
    if (localJSONObject != null)
    {
      this.d = localJSONObject.optString("template");
      JSONArray localJSONArray = localJSONObject.optJSONArray("rules");
      if (localJSONArray != null)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        for (int k = 0; k < localJSONArray.length(); k++)
        {
          if (k > 0)
            localStringBuilder.append(",");
          localStringBuilder.append(localJSONArray.optString(k));
        }
        this.e = localStringBuilder.toString();
      }
      this.f = localJSONObject.optInt("tempGroup", 0);
      this.g = localJSONObject.optInt("readTime", 180);
    }
    this.c = new d(this);
    this.b = new SmsReader();
  }

  public final MiniReadSmsArgs a()
  {
    return this.c;
  }

  public final void b()
  {
    if (this.a)
      return;
    LogUtils.b();
    this.a = true;
    String str1 = this.c.getDataByKey("rules");
    String str2 = this.c.getDataByKey("temp");
    if ((TextUtils.isEmpty(str1)) || (TextUtils.isEmpty(str2)))
    {
      this.a = false;
      return;
    }
    new Thread(new e(this, Integer.parseInt(this.c.getDataByKey("read_time")), str1.split(","), str2, Integer.parseInt(this.c.getDataByKey("tmp_group")))).start();
  }

  public final void c()
  {
    this.a = false;
    this.b.a();
    this.i = null;
    this.j = null;
    this.c = null;
    this.d = null;
    this.e = null;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.util.MiniSmsReader
 * JD-Core Version:    0.6.2
 */