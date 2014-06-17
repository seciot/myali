.class Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/concurrent/CountDownLatch;

.field final synthetic b:[Ljava/io/File;

.field final synthetic c:Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;Ljava/util/concurrent/CountDownLatch;[Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$1;->c:Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;

    iput-object p2, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$1;->a:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$1;->b:[Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$1;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$1;->c:Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->a(Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$1$1;

    invoke-direct {v1, p0}, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$1$1;-><init>(Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
