package com.alipay.android.mini.uielement;

import android.app.Activity;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.view.View;
import com.alipay.android.app.R.layout;
import com.alipay.android.mini.util.UIPropUtil;
import org.json.JSONObject;

public class UILine extends BaseElement
{
  protected final void a(Activity paramActivity, View paramView)
  {
    if (Build.VERSION.SDK_INT > 11)
      paramView.setLayerType(1, null);
    if (!TextUtils.isEmpty(q()))
      UIPropUtil.a(q(), new z(this, paramView));
  }

  public final int b()
  {
    return 0;
  }

  public final JSONObject e()
  {
    return null;
  }

  protected final int t()
  {
    return R.layout.p;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.uielement.UILine
 * JD-Core Version:    0.6.2
 */