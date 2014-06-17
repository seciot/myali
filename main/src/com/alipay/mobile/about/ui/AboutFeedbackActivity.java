package com.alipay.mobile.about.ui;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.InputFilter;
import android.text.InputFilter.LengthFilter;
import android.widget.Toast;
import com.alipay.mobile.clientsecurity.R.color;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobile.commonui.inputfomatter.APSplitTextFormatter;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APEditText;
import com.alipay.mobile.commonui.widget.APInputBox;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.framework.service.common.TaskScheduleService;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import java.lang.reflect.Field;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class AboutFeedbackActivity extends BaseActivity
{
  public static final Pattern a = Pattern.compile("[1][3-8][0-9]{9}");
  private static Integer g = Integer.valueOf(0);
  private APEditText b;
  private APInputBox c;
  private APTextView d;
  private APButton e;
  private APTitleBar f;
  private boolean h = false;
  private UserInfo i;
  private boolean j = false;
  private boolean k = false;

  private static <T> T a(Object paramObject, String paramString, T paramT)
  {
    try
    {
      Field localField = paramObject.getClass().getDeclaredField(paramString);
      localField.setAccessible(true);
      Object localObject = localField.get(paramObject);
      return localObject;
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
      localNoSuchFieldException.getLocalizedMessage();
      return paramT;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      localIllegalArgumentException.getLocalizedMessage();
      return paramT;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      localIllegalAccessException.getLocalizedMessage();
      return paramT;
    }
    catch (Exception localException)
    {
      localException.getLocalizedMessage();
    }
    return paramT;
  }

  private void a(int paramInt)
  {
    this.e.setEnabled(c());
    this.d.setText(String.valueOf(g.intValue() - paramInt));
  }

  private void b()
  {
    this.c.setOnFocusChangeListener(new b(this));
    this.c.addTextChangedListener(new c(this));
    this.b.addTextChangedListener(new d(this));
    if (g.intValue() == 0)
    {
      g = Integer.valueOf(240);
      for (InputFilter localInputFilter : this.b.getFilters())
        if ((localInputFilter instanceof InputFilter.LengthFilter))
          g = (Integer)a(localInputFilter, "mMax", Integer.valueOf(240));
    }
    if (!this.h)
      this.c.setVisibility(0);
    while (true)
    {
      a(0);
      return;
      this.c.setVisibility(8);
    }
  }

  private boolean c()
  {
    return (this.j) && (this.k);
  }

  private void d()
  {
    this.e.setEnabled(c());
    if (this.c.getInputedText().length() > 0);
    for (int m = R.string.ae; ; m = R.string.ad)
    {
      Toast.makeText(getApplicationContext(), m, 1).show();
      return;
    }
  }

  public final void a()
  {
    if (!c())
      return;
    if ((this.c.getVisibility() == 0) && (!a.matcher(this.c.getInputedText().toString()).find()))
    {
      d();
      return;
    }
    if (this.b.getText().toString().trim().length() == 0)
    {
      toast(getText(R.string.g).toString(), 1);
      return;
    }
    ((TaskScheduleService)findServiceByInterface(TaskScheduleService.class.getName())).parallelExecute(new e(this));
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.T);
    this.d = ((APTextView)findViewById(R.id.aV));
    this.b = ((APEditText)findViewById(R.id.e));
    this.f = ((APTitleBar)findViewById(R.id.ge));
    this.f.setGenericButtonListener(new a(this));
    this.e = this.f.getGenericButton();
    ColorStateList localColorStateList = getResources().getColorStateList(R.color.a);
    this.e.setTextColor(localColorStateList);
    this.c = ((APInputBox)findViewById(R.id.f));
    this.c.setTextFormatter(new APSplitTextFormatter("3,8"));
    this.c.getEtContent().setInputType(3);
    this.c.setApprerance(true);
    AuthService localAuthService = (AuthService)this.mApp.getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName());
    if (localAuthService.isLogin())
      this.i = localAuthService.getUserInfo();
    if ((this.i != null) && (this.i.getMobileNumber() != null));
    for (boolean bool = true; ; bool = false)
    {
      this.h = bool;
      this.j = this.h;
      b();
      return;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.about.ui.AboutFeedbackActivity
 * JD-Core Version:    0.6.2
 */