package com.alipay.android.widget.security.ui.authentication;

import android.annotation.SuppressLint;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Environment;
import android.provider.MediaStore.Images.Media;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class AuthenticationSaveImageHelper
{
  private Context a;

  public AuthenticationSaveImageHelper(Context paramContext)
  {
    this.a = paramContext;
  }

  public final void a(Bitmap paramBitmap, SaveImageResultCallback paramSaveImageResultCallback)
  {
    new SavePhotoTask(this.a, paramBitmap, paramSaveImageResultCallback).execute(new Void[0]);
  }

  public static abstract interface SaveImageResultCallback
  {
    public abstract void a(boolean paramBoolean, String paramString);
  }

  private class SavePhotoTask extends AsyncTask<Void, Object, String>
  {
    private final Context b;
    private Bitmap c;
    private AuthenticationSaveImageHelper.SaveImageResultCallback d;

    public SavePhotoTask(Context paramBitmap, Bitmap paramSaveImageResultCallback, AuthenticationSaveImageHelper.SaveImageResultCallback arg4)
    {
      this.b = paramBitmap;
      this.c = paramSaveImageResultCallback;
      Object localObject;
      this.d = localObject;
    }

    @SuppressLint({"SimpleDateFormat"})
    private String a(Bitmap paramBitmap)
    {
      File localFile1 = Environment.getExternalStorageDirectory();
      File localFile2 = new File(localFile1.getAbsolutePath() + "/" + Environment.DIRECTORY_DCIM);
      if ((!localFile2.exists()) && (!localFile2.mkdirs()))
        if (!"ZTE".equalsIgnoreCase(Build.MANUFACTURER))
          break label369;
      label369: for (localFile2 = new File("/mnt/sdcard-ext/" + Environment.DIRECTORY_DCIM); ; localFile2 = null)
      {
        if ((localFile2 == null) || ((!localFile2.exists()) && (!localFile2.mkdirs())))
          return null;
        String str1 = new SimpleDateFormat("yyyymmddhhmmss").format(new Date());
        String str2 = "alipay_certified_" + str1;
        String str3 = localFile2.getPath() + File.separator + str2 + ".jpg";
        File localFile3 = new File(str3);
        try
        {
          FileOutputStream localFileOutputStream = new FileOutputStream(localFile3);
          paramBitmap.compress(Bitmap.CompressFormat.JPEG, 100, localFileOutputStream);
          ContentResolver localContentResolver = this.b.getContentResolver();
          ContentValues localContentValues = new ContentValues(4);
          localContentValues.put("datetaken", Long.valueOf(System.currentTimeMillis()));
          localContentValues.put("mime_type", "image/jpeg");
          localContentValues.put("orientation", Integer.valueOf(0));
          localContentValues.put("_data", localFile3.getPath());
          localContentResolver.insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, localContentValues);
          return str3;
        }
        catch (IOException localIOException)
        {
          new StringBuilder("File").append(str3).append("not saved: ").append(localIOException.getMessage()).toString();
          return null;
        }
        catch (Exception localException)
        {
          while (true)
            new StringBuilder("File").append(str3).append("not saved: ").append(localException.getMessage()).toString();
        }
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.authentication.AuthenticationSaveImageHelper
 * JD-Core Version:    0.6.2
 */