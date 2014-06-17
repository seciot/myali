package com.alipay.mobile.android.avatar.process;

import android.content.ContentResolver;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Environment;
import android.os.ParcelFileDescriptor;
import android.support.v4.content.LocalBroadcastManager;
import android.text.TextUtils;
import android.util.Base64;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Toast;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APImageView;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.googlecode.androidannotations.annotations.AfterViews;
import com.googlecode.androidannotations.annotations.Background;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.UiThread;
import com.googlecode.androidannotations.annotations.ViewById;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileNotFoundException;

@EActivity(resName="avatar_crop_image")
public class EditAvatarActivity extends BaseActivity
  implements View.OnClickListener
{

  @ViewById(resName="avatar_crop")
  protected CropImageView a;

  @ViewById(resName="operations_cancel")
  protected APButton b;

  @ViewById(resName="operations_confirm")
  protected APButton c;

  @ViewById(resName="operations_rotate")
  protected APImageView d;
  private com.alipay.mobile.android.avatar.b.a e;
  private com.alipay.mobile.android.avatar.a.a.a f;
  private String g;
  private AuthService h = null;
  private UserInfo i = null;
  private boolean j = false;
  private String k;
  private boolean l = false;
  private boolean m = false;

  private static String a(String paramString)
  {
    byte[] arrayOfByte = null;
    try
    {
      File localFile = new File(paramString);
      boolean bool = localFile.exists();
      arrayOfByte = null;
      if (bool)
      {
        FileInputStream localFileInputStream = new FileInputStream(localFile);
        arrayOfByte = new byte[localFileInputStream.available()];
        int n;
        do
          n = localFileInputStream.read(arrayOfByte);
        while (n != -1);
      }
      label56: if (arrayOfByte != null)
        return Base64.encodeToString(arrayOfByte, 2);
    }
    catch (Exception localException)
    {
      break label56;
    }
    return "";
  }

  private void a(boolean paramBoolean)
  {
    String str = b(paramBoolean);
    new StringBuilder("setImage  不需要手动设置图片，直接返回图片 url =").append(str).toString();
    b("imageUrl", str);
    e();
  }

  private boolean a(File paramFile)
  {
    int n = 0;
    if ((paramFile == null) || (!paramFile.exists()) || (paramFile.isFile()))
      return false;
    File[] arrayOfFile = paramFile.listFiles();
    int i1 = arrayOfFile.length;
    if (n < i1)
    {
      File localFile = arrayOfFile[n];
      String str = localFile.getName();
      if ((localFile.isFile()) && (str != null) && (str.indexOf("__tmp_avatar") == -1))
        localFile.delete();
      while (true)
      {
        n++;
        break;
        if (localFile.isDirectory())
          a(localFile);
      }
    }
    return true;
  }

  private String b(String paramString)
  {
    return c(paramString) + this.g + ".jpg";
  }

  private String b(boolean paramBoolean)
  {
    Bitmap localBitmap;
    if (!paramBoolean)
      localBitmap = this.a.getBitmap();
    try
    {
      while (true)
      {
        String str = this.a.writeBitmap(localBitmap);
        return str;
        localBitmap = this.a.getCropBitmap();
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return "";
  }

  private void b(String paramString1, String paramString2)
  {
    Intent localIntent = new Intent();
    localIntent.setAction("com.alipay.ext.editavatar");
    localIntent.putExtra(paramString1, paramString2);
    LocalBroadcastManager.getInstance(getApplicationContext()).sendBroadcast(localIntent);
    new StringBuilder("sendExtMessage value: ").append(paramString2).toString();
  }

  private static String c(String paramString)
  {
    return AlipayApplication.getInstance().getFilesDir() + File.separator + "userdata" + File.separator + "useravatar" + File.separator + paramString + File.separator;
  }

  private void d()
  {
    if ((this.l) && (!this.m))
    {
      a(false);
      return;
    }
    this.a.invalidate();
  }

  private void e()
  {
    setResult(0);
    this.a.recycle();
    f();
    finish();
  }

  private void f()
  {
    File localFile = new File(this.a.tmp_avatarDirStr + "tmp.jpg");
    if (localFile.exists())
      localFile.delete();
  }

  @AfterViews
  protected final void a()
  {
    this.a.setActivity(this);
    this.b.setOnClickListener(this);
    this.c.setOnClickListener(this);
    this.d.setOnClickListener(this);
    this.e = new com.alipay.mobile.android.avatar.b.a(this);
    Drawable localDrawable = this.a.getBackground();
    if ((localDrawable != null) && ((localDrawable instanceof BitmapDrawable)))
    {
      BitmapDrawable localBitmapDrawable = (BitmapDrawable)localDrawable;
      localBitmapDrawable.mutate();
      localBitmapDrawable.setTileModeXY(Shader.TileMode.REPEAT, Shader.TileMode.REPEAT);
    }
    int n;
    if (!this.j)
    {
      Bundle localBundle = getIntent().getExtras();
      n = localBundle.getInt("input-type");
      this.l = localBundle.getBoolean("extInvoke");
      this.m = localBundle.getBoolean("headEdit");
      new StringBuilder("startGettingAvatar extInvoke: ").append(this.l).toString();
      new StringBuilder("startGettingAvatar headEdit: ").append(this.m).toString();
    }
    switch (n)
    {
    default:
      return;
    case 1:
      Intent localIntent2 = new Intent("android.intent.action.GET_CONTENT");
      localIntent2.setType("image/*");
      startActivityForResult(localIntent2, 1);
      return;
    case 0:
    }
    Intent localIntent1 = new Intent("android.media.action.IMAGE_CAPTURE");
    localIntent1.putExtra("output", Uri.fromFile(new File(Environment.getExternalStorageDirectory(), "__tmp_avatar.jpg")));
    startActivityForResult(localIntent1, 0);
  }

  @UiThread
  protected void a(int paramInt)
  {
    Toast.makeText(this, paramInt, 0).show();
  }

  // ERROR //
  @Background
  protected void a(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 357	com/alipay/mobile/android/avatar/process/EditAvatarActivity:f	Lcom/alipay/mobile/android/avatar/a/a/a;
    //   4: aload_1
    //   5: invokevirtual 362	com/alipay/mobile/android/avatar/a/a/a:a	(Ljava/lang/String;)Lcom/alipay/mobileprod/biz/shared/account/domain/ex/UploadHeadImgRes;
    //   8: astore 4
    //   10: aload 4
    //   12: ifnull +379 -> 391
    //   15: aload 4
    //   17: invokevirtual 367	com/alipay/mobileprod/biz/shared/account/domain/ex/UploadHeadImgRes:getResultStatus	()I
    //   20: bipush 100
    //   22: if_icmpne +369 -> 391
    //   25: aload_0
    //   26: getfield 44	com/alipay/mobile/android/avatar/process/EditAvatarActivity:i	Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    //   29: ifnull +362 -> 391
    //   32: aload_0
    //   33: getstatic 373	com/alipay/mobile/clientsecurity/R$string:cS	I
    //   36: invokevirtual 375	com/alipay/mobile/android/avatar/process/EditAvatarActivity:a	(I)V
    //   39: aload 4
    //   41: invokevirtual 378	com/alipay/mobileprod/biz/shared/account/domain/ex/UploadHeadImgRes:getUserHeadImgPath	()Ljava/lang/String;
    //   44: astore 5
    //   46: aload 5
    //   48: ldc_w 380
    //   51: invokevirtual 383	java/lang/String:lastIndexOf	(Ljava/lang/String;)I
    //   54: istore 6
    //   56: iload 6
    //   58: iconst_m1
    //   59: if_icmpeq +16 -> 75
    //   62: aload_0
    //   63: aload 5
    //   65: iload 6
    //   67: iconst_1
    //   68: iadd
    //   69: invokevirtual 387	java/lang/String:substring	(I)Ljava/lang/String;
    //   72: putfield 139	com/alipay/mobile/android/avatar/process/EditAvatarActivity:g	Ljava/lang/String;
    //   75: aload_0
    //   76: getfield 139	com/alipay/mobile/android/avatar/process/EditAvatarActivity:g	Ljava/lang/String;
    //   79: ifnull +87 -> 166
    //   82: ldc 83
    //   84: aload_0
    //   85: getfield 139	com/alipay/mobile/android/avatar/process/EditAvatarActivity:g	Ljava/lang/String;
    //   88: invokevirtual 391	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   91: ifne +75 -> 166
    //   94: aload_0
    //   95: getfield 256	com/alipay/mobile/android/avatar/process/EditAvatarActivity:e	Lcom/alipay/mobile/android/avatar/b/a;
    //   98: astore 15
    //   100: new 89	java/lang/StringBuilder
    //   103: dup
    //   104: invokespecial 135	java/lang/StringBuilder:<init>	()V
    //   107: aload_0
    //   108: getfield 44	com/alipay/mobile/android/avatar/process/EditAvatarActivity:i	Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    //   111: invokevirtual 396	com/alipay/mobile/framework/service/ext/security/bean/UserInfo:getUserId	()Ljava/lang/String;
    //   114: invokevirtual 96	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   117: ldc_w 398
    //   120: invokevirtual 96	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   123: invokevirtual 100	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   126: astore 16
    //   128: aload_0
    //   129: aload_0
    //   130: getfield 44	com/alipay/mobile/android/avatar/process/EditAvatarActivity:i	Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    //   133: invokevirtual 396	com/alipay/mobile/framework/service/ext/security/bean/UserInfo:getUserId	()Ljava/lang/String;
    //   136: invokespecial 400	com/alipay/mobile/android/avatar/process/EditAvatarActivity:b	(Ljava/lang/String;)Ljava/lang/String;
    //   139: astore 17
    //   141: aload 15
    //   143: getfield 403	com/alipay/mobile/android/avatar/b/a:a	Landroid/content/SharedPreferences;
    //   146: invokeinterface 409 1 0
    //   151: aload 16
    //   153: aload 17
    //   155: invokeinterface 415 3 0
    //   160: invokeinterface 418 1 0
    //   165: pop
    //   166: aload 5
    //   168: ifnull +79 -> 247
    //   171: aload 5
    //   173: ldc 83
    //   175: invokevirtual 391	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   178: ifne +69 -> 247
    //   181: aload_0
    //   182: getfield 44	com/alipay/mobile/android/avatar/process/EditAvatarActivity:i	Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    //   185: ifnull +62 -> 247
    //   188: aload_0
    //   189: aload_0
    //   190: getfield 42	com/alipay/mobile/android/avatar/process/EditAvatarActivity:h	Lcom/alipay/mobile/framework/service/ext/security/AuthService;
    //   193: invokevirtual 424	com/alipay/mobile/framework/service/ext/security/AuthService:getUserInfo	()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    //   196: putfield 44	com/alipay/mobile/android/avatar/process/EditAvatarActivity:i	Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    //   199: aload_0
    //   200: getfield 44	com/alipay/mobile/android/avatar/process/EditAvatarActivity:i	Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    //   203: ifnull +44 -> 247
    //   206: invokestatic 193	com/alipay/mobile/framework/AlipayApplication:getInstance	()Lcom/alipay/mobile/framework/AlipayApplication;
    //   209: invokevirtual 428	com/alipay/mobile/framework/AlipayApplication:getMicroApplicationContext	()Lcom/alipay/mobile/framework/MicroApplicationContext;
    //   212: ldc_w 430
    //   215: invokevirtual 433	java/lang/Class:getName	()Ljava/lang/String;
    //   218: invokeinterface 439 2 0
    //   223: checkcast 430	com/alipay/mobile/framework/service/ext/security/AccountService
    //   226: astore 13
    //   228: aload_0
    //   229: getfield 44	com/alipay/mobile/android/avatar/process/EditAvatarActivity:i	Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    //   232: aload 5
    //   234: invokevirtual 442	com/alipay/mobile/framework/service/ext/security/bean/UserInfo:setUserAvatar	(Ljava/lang/String;)V
    //   237: aload 13
    //   239: aload_0
    //   240: getfield 44	com/alipay/mobile/android/avatar/process/EditAvatarActivity:i	Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    //   243: invokevirtual 446	com/alipay/mobile/framework/service/ext/security/AccountService:addUserInfo	(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Z
    //   246: pop
    //   247: aload_0
    //   248: new 55	java/io/File
    //   251: dup
    //   252: aload_0
    //   253: getfield 44	com/alipay/mobile/android/avatar/process/EditAvatarActivity:i	Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    //   256: invokevirtual 396	com/alipay/mobile/framework/service/ext/security/bean/UserInfo:getUserId	()Ljava/lang/String;
    //   259: invokestatic 137	com/alipay/mobile/android/avatar/process/EditAvatarActivity:c	(Ljava/lang/String;)Ljava/lang/String;
    //   262: invokespecial 58	java/io/File:<init>	(Ljava/lang/String;)V
    //   265: invokespecial 134	com/alipay/mobile/android/avatar/process/EditAvatarActivity:a	(Ljava/io/File;)Z
    //   268: pop
    //   269: new 55	java/io/File
    //   272: dup
    //   273: new 89	java/lang/StringBuilder
    //   276: dup
    //   277: invokespecial 135	java/lang/StringBuilder:<init>	()V
    //   280: aload_0
    //   281: getfield 44	com/alipay/mobile/android/avatar/process/EditAvatarActivity:i	Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    //   284: invokevirtual 396	com/alipay/mobile/framework/service/ext/security/bean/UserInfo:getUserId	()Ljava/lang/String;
    //   287: invokestatic 137	com/alipay/mobile/android/avatar/process/EditAvatarActivity:c	(Ljava/lang/String;)Ljava/lang/String;
    //   290: invokevirtual 96	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   293: ldc_w 330
    //   296: invokevirtual 96	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   299: invokevirtual 100	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   302: invokespecial 58	java/io/File:<init>	(Ljava/lang/String;)V
    //   305: astore 9
    //   307: aload 9
    //   309: invokevirtual 62	java/io/File:exists	()Z
    //   312: ifeq +27 -> 339
    //   315: aload 9
    //   317: new 55	java/io/File
    //   320: dup
    //   321: aload_0
    //   322: aload_0
    //   323: getfield 44	com/alipay/mobile/android/avatar/process/EditAvatarActivity:i	Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    //   326: invokevirtual 396	com/alipay/mobile/framework/service/ext/security/bean/UserInfo:getUserId	()Ljava/lang/String;
    //   329: invokespecial 400	com/alipay/mobile/android/avatar/process/EditAvatarActivity:b	(Ljava/lang/String;)Ljava/lang/String;
    //   332: invokespecial 58	java/io/File:<init>	(Ljava/lang/String;)V
    //   335: invokevirtual 449	java/io/File:renameTo	(Ljava/io/File;)Z
    //   338: pop
    //   339: new 55	java/io/File
    //   342: dup
    //   343: new 89	java/lang/StringBuilder
    //   346: dup
    //   347: invokespecial 135	java/lang/StringBuilder:<init>	()V
    //   350: aload_0
    //   351: getfield 44	com/alipay/mobile/android/avatar/process/EditAvatarActivity:i	Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    //   354: invokevirtual 396	com/alipay/mobile/framework/service/ext/security/bean/UserInfo:getUserId	()Ljava/lang/String;
    //   357: invokevirtual 96	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   360: ldc_w 330
    //   363: invokevirtual 96	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   366: invokevirtual 100	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   369: invokestatic 137	com/alipay/mobile/android/avatar/process/EditAvatarActivity:c	(Ljava/lang/String;)Ljava/lang/String;
    //   372: invokespecial 58	java/io/File:<init>	(Ljava/lang/String;)V
    //   375: astore 10
    //   377: aload 10
    //   379: invokevirtual 62	java/io/File:exists	()Z
    //   382: ifeq +9 -> 391
    //   385: aload 10
    //   387: invokevirtual 129	java/io/File:delete	()Z
    //   390: pop
    //   391: aload_0
    //   392: getfield 453	com/alipay/mobile/android/avatar/process/EditAvatarActivity:mApp	Lcom/alipay/mobile/framework/app/ActivityApplication;
    //   395: invokevirtual 456	com/alipay/mobile/framework/app/ActivityApplication:getMicroApplicationContext	()Lcom/alipay/mobile/framework/MicroApplicationContext;
    //   398: invokeinterface 459 1 0
    //   403: aload_0
    //   404: iconst_m1
    //   405: invokevirtual 216	com/alipay/mobile/android/avatar/process/EditAvatarActivity:setResult	(I)V
    //   408: aload_0
    //   409: invokevirtual 224	com/alipay/mobile/android/avatar/process/EditAvatarActivity:finish	()V
    //   412: return
    //   413: astore_3
    //   414: aload_0
    //   415: getfield 453	com/alipay/mobile/android/avatar/process/EditAvatarActivity:mApp	Lcom/alipay/mobile/framework/app/ActivityApplication;
    //   418: invokevirtual 456	com/alipay/mobile/framework/app/ActivityApplication:getMicroApplicationContext	()Lcom/alipay/mobile/framework/MicroApplicationContext;
    //   421: invokeinterface 459 1 0
    //   426: aload_3
    //   427: invokevirtual 460	com/alipay/mobile/common/rpc/RpcException:printStackTrace	()V
    //   430: aload_3
    //   431: athrow
    //   432: astore 7
    //   434: goto -43 -> 391
    //
    // Exception table:
    //   from	to	target	type
    //   0	10	413	com/alipay/mobile/common/rpc/RpcException
    //   15	56	413	com/alipay/mobile/common/rpc/RpcException
    //   62	75	413	com/alipay/mobile/common/rpc/RpcException
    //   75	166	413	com/alipay/mobile/common/rpc/RpcException
    //   171	247	413	com/alipay/mobile/common/rpc/RpcException
    //   247	339	413	com/alipay/mobile/common/rpc/RpcException
    //   339	391	413	com/alipay/mobile/common/rpc/RpcException
    //   391	412	413	com/alipay/mobile/common/rpc/RpcException
    //   247	339	432	java/lang/Exception
    //   339	391	432	java/lang/Exception
  }

  @Background
  protected void b()
  {
    this.h = ((AuthService)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName()));
    if (this.h.isLogin())
    {
      this.i = this.h.getUserInfo();
      return;
    }
    this.h.auth();
  }

  public final String c()
  {
    if (this.i == null)
      return "";
    return this.i.getUserId();
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    Uri localUri;
    Object localObject;
    Cursor localCursor;
    String str;
    if (paramInt2 == -1)
      switch (paramInt1)
      {
      default:
        return;
      case 1:
        if (paramIntent != null)
        {
          localUri = paramIntent.getData();
          localObject = null;
          if (localUri != null)
          {
            if (Build.VERSION.SDK_INT >= 19)
              break label169;
            CropImageView localCropImageView = this.a;
            localCursor = managedQuery(localUri, new String[] { "_data" }, null, null, null);
            str = null;
            if (localCursor != null)
            {
              int n = localCursor.getCount();
              str = null;
              if (n > 0)
                break label135;
            }
            localObject = localCropImageView.getBitmap(str);
          }
        }
        break;
      case 0:
      }
    while (true)
    {
      if (localObject != null)
      {
        this.a.setBitmap((Bitmap)localObject);
        d();
        return;
        label135: int i1 = localCursor.getColumnIndexOrThrow("_data");
        localCursor.moveToFirst();
        str = localCursor.getString(i1);
        break;
      }
      try
      {
        label169: FileDescriptor localFileDescriptor = getContentResolver().openFileDescriptor(localUri, "r").getFileDescriptor();
        Bitmap localBitmap = this.a.getBitmap(localFileDescriptor);
        localObject = localBitmap;
        continue;
        a(R.string.cP);
        setResult(0);
        this.a.recycle();
        f();
        finish();
        return;
        setResult(0);
        if (this.a != null)
          this.a.recycle();
        f();
        finish();
        return;
        this.k = Uri.fromFile(new File(Environment.getExternalStorageDirectory(), "__tmp_avatar.jpg")).getPath();
        this.a.setBitmap(this.k);
        d();
        new StringBuilder("onActivityResult bitMapPath: ").append(this.k).toString();
        return;
        setResult(0);
        this.a.recycle();
        f();
        finish();
        return;
      }
      catch (FileNotFoundException localFileNotFoundException)
      {
        localObject = null;
      }
    }
  }

  public void onClick(View paramView)
  {
    int n = paramView.getId();
    if (n == R.id.cH)
    {
      if (this.l)
        b("operateType", "cancel");
      e();
    }
    do
    {
      String str1;
      String str2;
      int i1;
      do
      {
        return;
        if (n != R.id.cI)
          break;
        if (this.l)
        {
          a(true);
          return;
        }
        str1 = b(true);
        str2 = a(str1);
        i1 = str1.lastIndexOf("/");
      }
      while (i1 == -1);
      String str3 = str1.substring(i1 + 1);
      this.mApp.getMicroApplicationContext().showProgressDialog(getString(R.string.cR));
      a(str2, str3);
      return;
    }
    while ((n != R.id.cJ) || (this.a == null));
    this.a.rotateBitmap(90.0F);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.f = new com.alipay.mobile.android.avatar.a.a.a();
    this.j = false;
    if (paramBundle != null)
      this.j = true;
  }

  protected void onDestroy()
  {
    super.onDestroy();
    if (this.a != null)
      this.a.recycle();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      if (this.l)
        b("operateType", "cancel");
      setResult(0);
      this.a.recycle();
      f();
      finish();
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  protected void onRestoreInstanceState(Bundle paramBundle)
  {
    super.onRestoreInstanceState(paramBundle);
    if (paramBundle != null)
    {
      String str = paramBundle.getString("bitMapPath");
      if ((!TextUtils.isEmpty(str)) && (this.a != null))
      {
        new StringBuilder("onRestoreInstanceState mBitMapPath: ").append(str).toString();
        this.a.setBitmap(str);
        this.a.invalidate();
      }
    }
  }

  protected void onResume()
  {
    super.onResume();
    b();
  }

  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putString("bitMapPath", this.k);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.android.avatar.process.EditAvatarActivity
 * JD-Core Version:    0.6.2
 */