package com.androidquery.service;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.text.Editable;
import android.text.Html.TagHandler;
import com.androidquery.AQuery;
import com.androidquery.callback.AjaxCallback;
import com.androidquery.callback.AjaxStatus;
import org.json.JSONObject;
import org.xml.sax.XMLReader;

class MarketService$Handler
  implements DialogInterface.OnClickListener, Html.TagHandler
{
  private MarketService$Handler(MarketService paramMarketService)
  {
  }

  private void cb(String paramString, JSONObject paramJSONObject, AjaxStatus paramAjaxStatus)
  {
    if (!MarketService.access$5(this.this$0))
    {
      MarketService.access$6(this.this$0, true);
      MarketService.access$7(this.this$0, 0);
      this.this$0.callback(paramString, paramJSONObject, paramAjaxStatus);
    }
  }

  public void detailCb(String paramString1, String paramString2, AjaxStatus paramAjaxStatus)
  {
    if ((paramString2 != null) && (paramString2.length() > 1000))
    {
      String str = MarketService.access$8(this.this$0);
      AjaxCallback localAjaxCallback = new AjaxCallback();
      ((AjaxCallback)((AjaxCallback)localAjaxCallback.url(str)).type(JSONObject.class)).handler(this, "marketCb");
      localAjaxCallback.param("html", paramString2);
      ((AQuery)MarketService.access$3(this.this$0).progress(MarketService.access$4(this.this$0))).ajax(localAjaxCallback);
    }
  }

  public void handleTag(boolean paramBoolean, String paramString, Editable paramEditable, XMLReader paramXMLReader)
  {
    if ("li".equals(paramString))
    {
      if (paramBoolean)
      {
        paramEditable.append("  ");
        paramEditable.append("•");
        paramEditable.append("  ");
      }
    }
    else
      return;
    paramEditable.append("\n");
  }

  public void marketCb(String paramString, JSONObject paramJSONObject, AjaxStatus paramAjaxStatus)
  {
    if (MarketService.access$0(this.this$0).isFinishing());
    String str1;
    do
    {
      return;
      if (paramJSONObject == null)
        break label182;
      str1 = paramJSONObject.optString("status");
      if (!"1".equals(str1))
        break;
      if (paramJSONObject.has("dialog"))
        cb(paramString, paramJSONObject, paramAjaxStatus);
    }
    while ((MarketService.access$1(this.this$0)) || (!paramJSONObject.optBoolean("fetch", false)) || (paramAjaxStatus.getSource() != 1));
    MarketService.access$2(this.this$0, true);
    String str2 = paramJSONObject.optString("marketUrl", null);
    AjaxCallback localAjaxCallback = new AjaxCallback();
    ((AjaxCallback)((AjaxCallback)localAjaxCallback.url(str2)).type(String.class)).handler(this, "detailCb");
    ((AQuery)MarketService.access$3(this.this$0).progress(MarketService.access$4(this.this$0))).ajax(localAjaxCallback);
    return;
    if ("0".equals(str1))
    {
      paramAjaxStatus.invalidate();
      return;
    }
    cb(paramString, paramJSONObject, paramAjaxStatus);
    return;
    label182: cb(paramString, paramJSONObject, paramAjaxStatus);
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return;
    case -1:
      MarketService.access$10(MarketService.access$0(this.this$0), MarketService.access$9(this.this$0));
      return;
    case -2:
      MarketService.access$10(MarketService.access$0(this.this$0), MarketService.access$11(this.this$0));
      return;
    case -3:
    }
    MarketService.access$13(MarketService.access$0(this.this$0), MarketService.access$12(this.this$0));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.androidquery.service.MarketService.Handler
 * JD-Core Version:    0.6.2
 */