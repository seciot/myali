.class Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:[Ljava/io/File;

.field final synthetic c:I

.field final synthetic d:Ljava/util/concurrent/CountDownLatch;

.field final synthetic e:Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;Landroid/net/Uri;[Ljava/io/File;ILjava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$2;->e:Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;

    iput-object p2, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$2;->a:Landroid/net/Uri;

    iput-object p3, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$2;->b:[Ljava/io/File;

    iput p4, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$2;->c:I

    iput-object p5, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$2;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$2;->e:Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$2;->a:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/securitycommon/LWThumbnailUtils;->b(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/security/securitycommon/ImageUtils;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$2;->b:[Ljava/io/File;

    iget v3, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$2;->c:I

    aput-object v0, v2, v3

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$2;->e:Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;

    invoke-static {v2}, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->b(Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;)[Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$2;->c:I

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$2;->e:Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->a(Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$2$1;

    invoke-direct {v2, p0, v1}, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$2$1;-><init>(Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$2;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$2;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
