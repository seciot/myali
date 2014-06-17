package com.alipay.mobile.common.misc;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface.OnClickListener;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.text.TextUtils.TruncateAt;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;
import com.alipay.mobile.base.commonbiz.R.id;
import com.alipay.mobile.base.commonbiz.R.layout;
import com.alipay.mobile.base.commonbiz.R.string;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.commonui.widget.APTableView;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.framework.service.common.ImageLoaderService;
import java.io.File;
import java.io.IOException;
import java.util.Timer;

public class ExtViewUtil
{
  public static InputMethodManager inputMethodManager = (InputMethodManager)AlipayApplication.getInstance().getSystemService("input_method");

  public static void closeSoftInputWindow(Activity paramActivity)
  {
    InputMethodManager localInputMethodManager = (InputMethodManager)paramActivity.getSystemService("input_method");
    if ((paramActivity.getCurrentFocus() != null) && (paramActivity.getCurrentFocus().getWindowToken() != null))
      localInputMethodManager.hideSoftInputFromWindow(paramActivity.getCurrentFocus().getWindowToken(), 2);
  }

  public static void closeSoftInputWindow(View paramView)
  {
    ((InputMethodManager)paramView.getContext().getSystemService("input_method")).hideSoftInputFromWindow(paramView.getWindowToken(), 2);
  }

  public static float convertDpToPixel(float paramFloat, Context paramContext)
  {
    return paramFloat * (paramContext.getResources().getDisplayMetrics().densityDpi / 160.0F);
  }

  public static float convertPixelToSp(float paramFloat, Context paramContext)
  {
    return paramFloat / paramContext.getResources().getDisplayMetrics().scaledDensity;
  }

  public static float convertPixelsToDp(float paramFloat, Context paramContext)
  {
    return paramFloat / (paramContext.getResources().getDisplayMetrics().densityDpi / 160.0F);
  }

  public static float convertSpToPixel(float paramFloat, Context paramContext)
  {
    return paramFloat * paramContext.getResources().getDisplayMetrics().scaledDensity;
  }

  public static void ellipseRightTextView(APTableView paramAPTableView, int paramInt, Context paramContext)
  {
    APTextView localAPTextView = paramAPTableView.getRightTextView();
    localAPTextView.setSingleLine(true);
    localAPTextView.getLayoutParams().width = ((int)convertDpToPixel(paramInt, paramContext));
    localAPTextView.setEllipsize(TextUtils.TruncateAt.END);
    localAPTextView.setGravity(5);
    localAPTextView.invalidate();
  }

  public static void ellipseTextView(TextView paramTextView, int paramInt, Context paramContext)
  {
    paramTextView.setSingleLine(true);
    paramTextView.getLayoutParams().width = ((int)convertDpToPixel(paramInt, paramContext));
    paramTextView.setEllipsize(TextUtils.TruncateAt.END);
    paramTextView.invalidate();
  }

  public static Bitmap getImage(Activity paramActivity, String paramString1, String paramString2, String paramString3, LoadUrlCallback paramLoadUrlCallback)
  {
    String str;
    if (paramString1.equals(""))
      str = "";
    while (true)
    {
      Object localObject;
      try
      {
        Bitmap localBitmap2 = BitmapFactory.decodeStream(paramActivity.getResources().getAssets().open(str + paramString2 + ".png"), null, null);
        localObject = localBitmap2;
        return localObject;
        str = paramString1 + File.separator;
        continue;
      }
      catch (IOException localIOException1)
      {
      }
      try
      {
        Bitmap localBitmap1 = BitmapFactory.decodeStream(paramActivity.getResources().getAssets().open(str + "BANK_default.png"), null, null);
        localObject = localBitmap1;
        if (!StringUtils.isNotBlank(paramString3))
          continue;
        try
        {
          ((ImageLoaderService)AlipayApplication.getInstance().getMicroApplicationContext().findServiceByInterface(ImageLoaderService.class.getName())).startLoad("BANK_ICON", null, paramString3, new ExtViewUtil.2(paramLoadUrlCallback), -1, -1);
          return localObject;
        }
        catch (Exception localException)
        {
          localException.getLocalizedMessage();
          return localObject;
        }
      }
      catch (IOException localIOException2)
      {
        while (true)
          localObject = null;
      }
    }
  }

  public static Bitmap getLocalImage(Activity paramActivity, String paramString1, String paramString2)
  {
    BitmapFactory.Options localOptions = new BitmapFactory.Options();
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    ((WindowManager)paramActivity.getSystemService("window")).getDefaultDisplay().getMetrics(localDisplayMetrics);
    localOptions.inDensity = localDisplayMetrics.densityDpi;
    localOptions.inScaled = true;
    String str;
    if (paramString1.equals(""))
      str = "";
    while (true)
    {
      Bitmap localBitmap1;
      try
      {
        Bitmap localBitmap4 = BitmapFactory.decodeStream(paramActivity.getResources().getAssets().open(str + paramString2 + ".png"), null, localOptions);
        localBitmap1 = localBitmap4;
        if (localBitmap1 != null);
      }
      catch (IOException localIOException1)
      {
        try
        {
          Bitmap localBitmap3 = BitmapFactory.decodeStream(paramActivity.getResources().getAssets().open(str + "BANK_default.png"), null, localOptions);
          localBitmap2 = localBitmap3;
          return localBitmap2;
          str = paramString1 + File.separator;
          continue;
          localIOException1 = localIOException1;
          localIOException1.printStackTrace();
          localBitmap1 = null;
        }
        catch (IOException localIOException2)
        {
          localIOException2.printStackTrace();
          return localBitmap1;
        }
      }
      Bitmap localBitmap2 = localBitmap1;
    }
  }

  public static void hideLoading(BaseActivity paramBaseActivity)
  {
    paramBaseActivity.dismissProgressDialog();
  }

  public static void hideSoftInput(View paramView)
  {
    inputMethodManager.hideSoftInputFromWindow(paramView.getWindowToken(), 0);
  }

  public static void openSoftInputWindow(Activity paramActivity, EditText paramEditText)
  {
    ((InputMethodManager)paramActivity.getSystemService("input_method")).showSoftInput(paramEditText, 1);
  }

  public static void showLoading(BaseActivity paramBaseActivity)
  {
    showLoading(paramBaseActivity, paramBaseActivity.getString(R.string.loading_dot));
  }

  public static void showLoading(BaseActivity paramBaseActivity, String paramString)
  {
    paramBaseActivity.showProgressDialog(paramBaseActivity.getString(R.string.loading_dot), true, null);
  }

  public static void showSoftInput(View paramView)
  {
    new Timer().schedule(new ExtViewUtil.3(paramView), 600L);
  }

  public static AlertDialog simpleAlert(Context paramContext, String paramString, DialogInterface.OnClickListener paramOnClickListener)
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(paramContext);
    localBuilder.setTitle("");
    localBuilder.setMessage(paramString);
    localBuilder.setCancelable(true);
    localBuilder.setPositiveButton("确定", paramOnClickListener);
    AlertDialog localAlertDialog = localBuilder.create();
    localAlertDialog.setCanceledOnTouchOutside(false);
    localAlertDialog.show();
    return localAlertDialog;
  }

  public static AlertDialog simpleAlert(Context paramContext, String paramString, boolean paramBoolean)
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(paramContext);
    localBuilder.setTitle("");
    localBuilder.setMessage(paramString);
    localBuilder.setCancelable(true);
    localBuilder.setPositiveButton("确定", new ExtViewUtil.1(paramBoolean, paramContext));
    AlertDialog localAlertDialog = localBuilder.create();
    localAlertDialog.show();
    return localAlertDialog;
  }

  public static Toast simpleToast(Context paramContext, String paramString)
  {
    Toast localToast = new Toast(paramContext);
    localToast.setView(LayoutInflater.from(paramContext).inflate(R.layout.ext_simple_toast, null));
    localToast.setGravity(17, 0, 0);
    localToast.setDuration(0);
    ((TextView)localToast.getView().findViewById(R.id.tip_content)).setText(paramString);
    localToast.show();
    return localToast;
  }

  public static int spToPix(float paramFloat, Context paramContext)
  {
    return (int)TypedValue.applyDimension(2, paramFloat, paramContext.getResources().getDisplayMetrics());
  }

  public static void toast(String paramString)
  {
    AlipayApplication.getInstance().getMicroApplicationContext().Toast(paramString, 0);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.misc.ExtViewUtil
 * JD-Core Version:    0.6.2
 */