package com.alipay.android.widget.security.ui.authentication;

import android.hardware.Camera;
import android.hardware.Camera.AutoFocusCallback;
import android.hardware.Camera.PictureCallback;
import java.util.concurrent.atomic.AtomicInteger;

class CameraPreview$2
  implements Camera.AutoFocusCallback
{
  CameraPreview$2(CameraPreview paramCameraPreview, Camera.PictureCallback paramPictureCallback)
  {
  }

  public void onAutoFocus(boolean paramBoolean, Camera paramCamera)
  {
    if (paramBoolean)
    {
      CameraPreview.access$000(this.b).set(0);
      paramCamera.takePicture(new CameraPreview.2.1(this), null, this.a);
    }
    while (CameraPreview.access$000(this.b).incrementAndGet() <= 1)
      return;
    CameraPreview.access$000(this.b).set(0);
    paramCamera.takePicture(new CameraPreview.2.2(this), null, this.a);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.authentication.CameraPreview.2
 * JD-Core Version:    0.6.2
 */