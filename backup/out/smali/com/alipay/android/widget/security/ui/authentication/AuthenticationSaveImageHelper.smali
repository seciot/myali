.class public Lcom/alipay/android/widget/security/ui/authentication/AuthenticationSaveImageHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/widget/security/ui/authentication/AuthenticationSaveImageHelper$SaveImageResultCallback;,
        Lcom/alipay/android/widget/security/ui/authentication/AuthenticationSaveImageHelper$SavePhotoTask;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationSaveImageHelper;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;Lcom/alipay/android/widget/security/ui/authentication/AuthenticationSaveImageHelper$SaveImageResultCallback;)V
    .locals 2

    new-instance v0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationSaveImageHelper$SavePhotoTask;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationSaveImageHelper;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationSaveImageHelper$SavePhotoTask;-><init>(Lcom/alipay/android/widget/security/ui/authentication/AuthenticationSaveImageHelper;Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/alipay/android/widget/security/ui/authentication/AuthenticationSaveImageHelper$SaveImageResultCallback;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationSaveImageHelper$SavePhotoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
