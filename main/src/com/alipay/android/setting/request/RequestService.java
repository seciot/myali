package com.alipay.android.setting.request;

import android.app.IntentService;
import android.content.Intent;
import android.util.SparseArray;
import com.alipay.android.app.data.InteractionData;
import com.alipay.android.app.helper.MspConfig;
import com.alipay.android.app.pay.GlobalConstant;
import com.alipay.android.lib.plusin.protocol.RequestUtils;
import com.alipay.android.setting.operator.GetMiniCashierChannel;
import com.alipay.android.setting.operator.GetSwitchState;
import com.alipay.android.setting.operator.SetMiniCashierChannel;
import com.alipay.android.setting.operator.SetMiniCashierState;
import com.alipay.android.setting.operator.SetNoPasswordState;
import com.alipay.mobile.common.info.AppInfo;
import org.apache.http.HttpResponse;

public class RequestService extends IntentService
  implements IRequest
{
  private static SparseArray c;
  private int a;
  private RequestContainer b;

  static
  {
    SparseArray localSparseArray = new SparseArray();
    c = localSparseArray;
    localSparseArray.put(1, new GetSwitchState());
    c.put(2, new SetNoPasswordState());
    c.put(3, new SetMiniCashierState());
    c.put(4, new GetMiniCashierChannel());
    c.put(5, new SetMiniCashierChannel());
    c.put(6, null);
  }

  public RequestService()
  {
    super("alipay_mini_setting");
    MspConfig.u().a(AppInfo.getInstance().isDebuggable());
  }

  public final void a(String paramString, int paramInt, InteractionData paramInteractionData)
  {
    if (paramInteractionData != null);
    try
    {
      HttpResponse localHttpResponse;
      for (Object localObject = RequestUtils.a(this, GlobalConstant.HTTP_URL, paramString, paramInteractionData); ; localObject = localHttpResponse)
      {
        String str2 = RequestUtils.a((HttpResponse)localObject);
        str1 = str2;
        Intent localIntent = new Intent("com.alipay.android.setting.REQUEST_END");
        localIntent.putExtra("result", str1);
        localIntent.putExtra("flag", paramInt);
        sendBroadcast(localIntent);
        return;
        localHttpResponse = RequestUtils.a(this, GlobalConstant.HTTP_URL, paramString);
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        String str1 = "";
      }
    }
  }

  protected void onHandleIntent(Intent paramIntent)
  {
    sendBroadcast(new Intent("com.alipay.android.setting.REQUEST_START"));
    this.a = paramIntent.getIntExtra("type", 0);
    if (this.a != 6)
      this.b = ((RequestContainer)paramIntent.getParcelableExtra("local_data"));
    IRequestOperator localIRequestOperator = (IRequestOperator)c.get(this.a);
    if (localIRequestOperator != null)
      localIRequestOperator.a(this, this.b);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.setting.request.RequestService
 * JD-Core Version:    0.6.2
 */