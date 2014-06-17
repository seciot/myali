package com.alipay.android.widget.security.ui.authentication;

import android.graphics.Bitmap;
import android.hardware.Camera;
import android.hardware.Camera.PictureCallback;
import com.alipay.mobile.security.securitycommon.Utilz;

class CameraPreview$1
  implements Camera.PictureCallback
{
  CameraPreview$1(CameraPreview paramCameraPreview, CameraPreview.TakePictureCallback paramTakePictureCallback)
  {
  }

  public void onPictureTaken(byte[] paramArrayOfByte, Camera paramCamera)
  {
    this.b.stopPreview();
    try
    {
      int i = this.b.getWidth();
      int j = this.b.getHeight();
      if (this.b.isCameraWHSwitched())
      {
        i = this.b.getHeight();
        j = this.b.getWidth();
      }
      Object localObject = Utilz.a(paramArrayOfByte, i, j);
      int k;
      if (this.b.isCameraRotated())
      {
        k = CameraHelper.b(this.b.cameraId);
        if (this.b.cameraFacing != 1)
          break label162;
        if ((k != 90) || (!CameraHelper.a()))
          break label130;
        localObject = Utilz.a((Bitmap)localObject, 270.0F);
      }
      while (true)
      {
        this.a.a((Bitmap)localObject);
        return;
        label130: if (CameraHelper.b())
        {
          localObject = Utilz.b((Bitmap)localObject, k);
        }
        else
        {
          localObject = Utilz.c((Bitmap)localObject, k);
          continue;
          label162: Bitmap localBitmap = Utilz.a((Bitmap)localObject, k);
          localObject = localBitmap;
        }
      }
    }
    catch (Error localError)
    {
      localError.printStackTrace();
      this.a.a();
      this.b.startPreview();
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      this.a.a();
      this.b.startPreview();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.authentication.CameraPreview.1
 * JD-Core Version:    0.6.2
 */