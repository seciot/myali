package com.alipay.android.widget.security.ui.authentication;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.RectF;
import android.hardware.Camera;
import android.hardware.Camera.Parameters;
import android.hardware.Camera.Size;
import android.util.AttributeSet;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import android.view.SurfaceView;
import android.view.View;
import android.widget.FrameLayout;
import com.alipay.mobile.security.securitycommon.Utilz;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

public class CameraPreview extends FrameLayout
  implements SurfaceHolder.Callback
{
  private final String a = "CameraPreview";
  private boolean b = false;
  private boolean c = false;
  protected Camera camera;
  protected int cameraDisplayRotation;
  protected int cameraFacing = -1;
  protected int cameraId = -1;
  private CameraCallback d;
  private AtomicInteger e = new AtomicInteger(0);
  protected boolean isPreviewRunning = false;
  protected Camera.Size pictureSize;
  protected CameraPreviewController previewController;
  protected Camera.Size previewSize;
  protected List<Camera.Size> supportedPictureSizes;
  protected List<Camera.Size> supportedPreviewSizes;
  protected SurfaceHolder surfaceHolder;
  protected SurfaceView surfaceView;

  public CameraPreview(Context paramContext)
  {
    super(paramContext);
    a();
  }

  public CameraPreview(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a();
  }

  private void a()
  {
    this.previewController = new CameraPreviewController(this);
    this.surfaceView = new SurfaceView(getContext());
    addView(this.surfaceView);
    this.surfaceHolder = this.surfaceView.getHolder();
    this.surfaceHolder.addCallback(this);
    this.surfaceHolder.setType(3);
  }

  private static boolean a(Camera.Parameters paramParameters)
  {
    List localList = paramParameters.getSupportedFocusModes();
    return (localList != null) && (localList.contains("auto"));
  }

  private void b()
  {
    if (this.b)
    {
      preparePreview(this.surfaceHolder);
      determineCameraSize(getWidth(), getHeight());
      startPreview();
    }
  }

  private void c()
  {
    this.camera.autoFocus(new CameraPreview.4(this));
  }

  protected boolean attachCamera(int paramInt)
  {
    if (!validateAttachCamera(paramInt))
      return false;
    if ((this.camera != null) && (this.cameraId != paramInt))
      detachCamera();
    new StringBuilder("attachCamera ").append(paramInt).toString();
    this.camera = CameraHelper.a(paramInt);
    if (this.camera != null)
    {
      this.cameraId = paramInt;
      this.cameraDisplayRotation = CameraHelper.a(getContext(), this.cameraId, this.camera);
      this.cameraFacing = CameraHelper.c(this.cameraId);
      Camera.Parameters localParameters = this.camera.getParameters();
      if (localParameters != null)
      {
        this.supportedPreviewSizes = localParameters.getSupportedPreviewSizes();
        this.supportedPictureSizes = localParameters.getSupportedPictureSizes();
      }
      b();
      return true;
    }
    throw new Exception("open camera " + this.cameraId + " failed ");
  }

  protected void detachCamera()
  {
    new StringBuilder("detachCamera: ").append(this.cameraId).toString();
    stopPreview();
    this.camera.release();
    this.camera = null;
    this.cameraDisplayRotation = 0;
    this.cameraFacing = -1;
  }

  protected void determineCameraSize(int paramInt1, int paramInt2)
  {
    if (isCameraWHSwitched());
    while (true)
    {
      if (this.supportedPreviewSizes != null)
      {
        this.previewSize = getOptimalSize(this.supportedPreviewSizes, paramInt2, paramInt1);
        if (this.supportedPictureSizes != null)
          this.pictureSize = getOptimalSize(this.supportedPictureSizes, this.previewSize.width, this.previewSize.height);
      }
      return;
      int i = paramInt2;
      paramInt2 = paramInt1;
      paramInt1 = i;
    }
  }

  public CameraCallback getCallback()
  {
    return this.d;
  }

  protected Camera.Size getOptimalSize(List<Camera.Size> paramList, int paramInt1, int paramInt2)
  {
    Object localObject3;
    if (paramList == null)
    {
      localObject3 = null;
      return localObject3;
    }
    double d1 = paramInt1 / paramInt2;
    Object localObject1 = null;
    double d2 = 1.7976931348623157E+308D;
    Iterator localIterator1 = paramList.iterator();
    label33: Object localObject5;
    double d6;
    while (localIterator1.hasNext())
    {
      Camera.Size localSize3 = (Camera.Size)localIterator1.next();
      if ((Math.abs(localSize3.width / localSize3.height - d1) <= 0.001D) && (Math.abs(localSize3.height - paramInt2) <= 300.0D))
      {
        if (Math.abs(localSize3.height - paramInt2) >= d2)
          break label375;
        double d7 = Math.abs(localSize3.height - paramInt2);
        localObject5 = localSize3;
        d6 = d7;
      }
    }
    while (true)
    {
      localObject1 = localObject5;
      d2 = d6;
      break label33;
      if (localObject1 == null)
      {
        Iterator localIterator3 = paramList.iterator();
        while (localIterator3.hasNext())
        {
          Camera.Size localSize2 = (Camera.Size)localIterator3.next();
          if ((Math.abs(localSize2.width / localSize2.height - d1) <= 0.2D) && (Math.abs(localSize2.height - paramInt2) <= 300.0D) && (Math.abs(localSize2.height - paramInt2) < d2))
          {
            d2 = Math.abs(localSize2.height - paramInt2);
            localObject1 = localSize2;
          }
        }
      }
      Object localObject2 = localObject1;
      if (localObject2 == null)
      {
        Iterator localIterator2 = paramList.iterator();
        localObject3 = localObject2;
        double d3 = 1.7976931348623157E+308D;
        label290: Object localObject4;
        double d4;
        if (localIterator2.hasNext())
        {
          Camera.Size localSize1 = (Camera.Size)localIterator2.next();
          if (Math.abs(localSize1.height - paramInt2) >= d3)
            break label361;
          double d5 = Math.abs(localSize1.height - paramInt2);
          localObject4 = localSize1;
          d4 = d5;
        }
        while (true)
        {
          localObject3 = localObject4;
          d3 = d4;
          break label290;
          break;
          label361: d4 = d3;
          localObject4 = localObject3;
        }
      }
      return localObject2;
      label375: d6 = d2;
      localObject5 = localObject1;
    }
  }

  public CameraPreviewController getPreviewController()
  {
    return this.previewController;
  }

  protected Point getPreviewViewSize()
  {
    Point localPoint = new Point();
    if (isCameraWHSwitched())
    {
      localPoint.x = this.previewSize.height;
      localPoint.y = this.previewSize.width;
      return localPoint;
    }
    localPoint.x = this.previewSize.width;
    localPoint.y = this.previewSize.height;
    return localPoint;
  }

  @SuppressLint({"NewApi"})
  public void handleTouchFocus()
  {
    if ((this.isPreviewRunning) && (this.camera != null))
    {
      Camera.Parameters localParameters = this.camera.getParameters();
      if ((localParameters != null) && (a(localParameters)))
        c();
    }
  }

  protected boolean isCameraRotated()
  {
    return (this.cameraDisplayRotation == 90) || (this.cameraDisplayRotation == 270) || (this.cameraDisplayRotation == 180);
  }

  protected boolean isCameraWHSwitched()
  {
    return (this.cameraDisplayRotation == 90) || (this.cameraDisplayRotation == 270);
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    View localView;
    int i;
    int j;
    int m;
    int k;
    if (((paramBoolean) || (this.c)) && (getChildCount() > 0))
    {
      this.c = false;
      localView = getChildAt(0);
      i = paramInt3 - paramInt1;
      j = paramInt4 - paramInt2;
      if (this.previewSize == null)
        break label198;
      Point localPoint = getPreviewViewSize();
      m = localPoint.x;
      k = localPoint.y;
    }
    while (true)
    {
      RectF localRectF = Utilz.a(m, k, i, j);
      new StringBuilder("box: width,height onLayout(l,t,r,b):").append(i).append(",").append(j).append("   ").append(localRectF.left).append(",").append(localRectF.top).append(",").append(localRectF.right).append(",").append(localRectF.bottom).toString();
      localView.layout((int)localRectF.left, (int)localRectF.top, (int)localRectF.right, (int)localRectF.bottom);
      return;
      label198: k = j;
      m = i;
    }
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i = resolveSize(getSuggestedMinimumWidth(), paramInt1);
    int j = resolveSize(getSuggestedMinimumHeight(), paramInt2);
    setMeasuredDimension(i, j);
    if ((i > 0) && (j > 0))
      determineCameraSize(i, j);
  }

  protected void preparePreview(SurfaceHolder paramSurfaceHolder)
  {
    if (this.camera == null)
      return;
    try
    {
      this.camera.setPreviewDisplay(paramSurfaceHolder);
      return;
    }
    catch (IOException localIOException)
    {
    }
  }

  protected void restartPreview()
  {
    stopPreview();
    startPreview();
  }

  public void setCallback(CameraCallback paramCameraCallback)
  {
    this.d = paramCameraCallback;
  }

  protected void setCameraFlashMode(String paramString)
  {
    Camera.Parameters localParameters = this.camera.getParameters();
    if (localParameters != null)
    {
      localParameters.setFlashMode(paramString);
      this.camera.setParameters(localParameters);
    }
  }

  public void setPreviewController(CameraPreviewController paramCameraPreviewController)
  {
    this.previewController = paramCameraPreviewController;
  }

  @SuppressLint({"NewApi"})
  protected void setTouchFocusArea(Rect paramRect)
  {
    Camera.Parameters localParameters = this.camera.getParameters();
    if (localParameters == null);
    while (localParameters.getMaxNumFocusAreas() <= 0)
      return;
    try
    {
      this.camera.setParameters(localParameters);
      c();
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  @SuppressLint({"NewApi"})
  protected void startPreview()
  {
    if ((this.isPreviewRunning) || (this.previewSize == null) || (this.pictureSize == null));
    while (true)
    {
      return;
      this.c = true;
      requestLayout();
      this.isPreviewRunning = true;
      try
      {
        Camera.Parameters localParameters = this.camera.getParameters();
        if (localParameters != null)
        {
          if (a(localParameters))
            localParameters.setFocusMode("auto");
          localParameters.setPreviewSize(this.previewSize.width, this.previewSize.height);
          localParameters.setPictureSize(this.pictureSize.width, this.pictureSize.height);
          this.camera.setParameters(localParameters);
          new StringBuilder("startPreview previewSize(width,height): ").append(this.previewSize.width).append(",").append(this.previewSize.height).toString();
          new StringBuilder("startPreview pictureSize(width,height): ").append(this.pictureSize.width).append(",").append(this.pictureSize.height).toString();
        }
        try
        {
          this.camera.startPreview();
          return;
        }
        catch (RuntimeException localRuntimeException)
        {
        }
        if (this.d == null)
          continue;
        this.d.a();
        return;
      }
      catch (Exception localException)
      {
        while (true)
          localException.printStackTrace();
      }
    }
  }

  protected void stopPreview()
  {
    if (this.isPreviewRunning);
    try
    {
      this.camera.cancelAutoFocus();
      this.camera.stopPreview();
      this.isPreviewRunning = false;
      return;
    }
    catch (Error localError)
    {
      while (true)
        localError.printStackTrace();
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  public void surfaceChanged(SurfaceHolder paramSurfaceHolder, int paramInt1, int paramInt2, int paramInt3)
  {
    new StringBuilder("surfaceChanged:").append(paramInt2).append(", ").append(paramInt3).toString();
    this.b = true;
    if (this.camera != null)
    {
      if (!this.isPreviewRunning)
      {
        determineCameraSize(paramInt2, paramInt3);
        startPreview();
      }
    }
    else
      return;
    restartPreview();
  }

  public void surfaceCreated(SurfaceHolder paramSurfaceHolder)
  {
    preparePreview(paramSurfaceHolder);
  }

  public void surfaceDestroyed(SurfaceHolder paramSurfaceHolder)
  {
    this.b = false;
    if (this.camera != null)
      stopPreview();
  }

  protected boolean switchToCamera(int paramInt)
  {
    if (!attachCamera(paramInt))
      return false;
    b();
    return true;
  }

  public void takePicture(TakePictureCallback paramTakePictureCallback)
  {
    try
    {
      CameraPreview.1 local1 = new CameraPreview.1(this, paramTakePictureCallback);
      Camera.Parameters localParameters = this.camera.getParameters();
      if ((localParameters != null) && (a(localParameters)))
      {
        this.camera.autoFocus(new CameraPreview.2(this, local1));
        return;
      }
      this.camera.takePicture(new CameraPreview.3(this), null, local1);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  protected boolean validateAttachCamera(int paramInt)
  {
    if (paramInt < 0);
    while ((this.camera != null) && (this.cameraId == paramInt))
      return false;
    return true;
  }

  public static abstract interface CameraCallback
  {
    public abstract void a();
  }

  public class CameraPreviewController
  {
    private CameraPreview b;
    private boolean c = false;
    private int d;
    private int e;

    public CameraPreviewController(CameraPreview arg2)
    {
      Object localObject;
      this.b = localObject;
      this.d = CameraHelper.d(CameraPreview.this.getContext());
      this.e = CameraHelper.e(CameraPreview.this.getContext());
    }

    public static String b()
    {
      return "auto";
    }

    public final List<String> a()
    {
      Camera localCamera = this.b.camera;
      List localList = null;
      if (localCamera != null)
      {
        Camera.Parameters localParameters = this.b.camera.getParameters();
        localList = null;
        if (localParameters != null)
          localList = localParameters.getSupportedFlashModes();
      }
      return localList;
    }

    public final void a(String paramString)
    {
      if (this.b.camera != null)
        this.b.setCameraFlashMode(paramString);
    }

    public final int c()
    {
      return this.b.cameraFacing;
    }

    public final void d()
    {
      if (this.b.camera != null)
        this.b.startPreview();
    }

    public final void e()
    {
      if (this.b.camera != null)
        this.b.stopPreview();
    }

    public final boolean f()
    {
      int i = this.b.cameraId;
      CameraPreview localCameraPreview;
      if (i >= 0)
        localCameraPreview = this.b;
      while (true)
      {
        return localCameraPreview.attachCamera(i);
        localCameraPreview = this.b;
        if (this.c)
        {
          if (this.d == -1)
            i = this.e;
        }
        else if (this.e != -1)
          i = this.e;
        else
          i = this.d;
      }
    }

    public final void g()
    {
      if (this.b.camera != null)
        this.b.detachCamera();
    }

    public final int h()
    {
      int i;
      if ((this.e >= 0) && (this.d >= 0))
        i = 1;
      while (i != 0)
        if (CameraPreview.this.cameraId == this.d)
        {
          this.b.switchToCamera(this.e);
          return 0;
          i = 0;
        }
        else if (CameraPreview.this.cameraId == this.e)
        {
          this.b.switchToCamera(this.d);
          return 1;
        }
      return -1;
    }
  }

  public static abstract interface TakePictureCallback
  {
    public abstract void a();

    public abstract void a(Bitmap paramBitmap);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.authentication.CameraPreview
 * JD-Core Version:    0.6.2
 */