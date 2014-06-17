package com.alipay.mobile.about.ui;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.Button;
import android.widget.LinearLayout;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.ext.security.AuthService;

public class FloatWindowBigView extends LinearLayout
{
  public static int viewHeight;
  public static int viewWidth;
  private Handler a;

  public FloatWindowBigView(Context paramContext)
  {
    super(paramContext);
    LayoutInflater.from(paramContext).inflate(R.layout.J, this);
    View localView = findViewById(R.id.R);
    viewWidth = localView.getLayoutParams().width;
    viewHeight = localView.getLayoutParams().height;
    Button localButton1 = (Button)findViewById(R.id.aF);
    Button localButton2 = (Button)findViewById(R.id.Q);
    Button localButton3 = (Button)findViewById(R.id.fF);
    Button localButton4 = (Button)findViewById(R.id.be);
    this.a = new Handler(Looper.getMainLooper());
    localButton1.setOnClickListener(new ab(this, paramContext));
    localButton2.setOnClickListener(new ac(this, paramContext));
    localButton3.setOnClickListener(new ad(this, paramContext));
    localButton4.setOnClickListener(new af(this, paramContext));
    AuthService localAuthService = (AuthService)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName());
    if ((localAuthService != null) && (localAuthService.isLogin()) && (localAuthService.getUserInfo() != null));
    for (int i = 1; ; i = 0)
    {
      if (i == 0)
        localButton4.setEnabled(false);
      return;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.about.ui.FloatWindowBigView
 * JD-Core Version:    0.6.2
 */