.class Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$2;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$2;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$2$1;->b:Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$2;

    iput-object p2, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$2$1;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$2$1;->b:Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$2;

    iget v0, v0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$2;->c:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$2$1;->b:Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$2;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$2;->e:Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->f:Lcom/alipay/mobile/commonui/widget/APImageView;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$2$1;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$2$1;->b:Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$2;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$2;->e:Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->f:Lcom/alipay/mobile/commonui/widget/APImageView;

    new-instance v1, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$2$1$1;

    invoke-direct {v1, p0}, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$2$1$1;-><init>(Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$2$1;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$2$1;->b:Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$2;

    iget v1, v1, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$2;->c:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$2$1;->b:Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$2;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$2;->e:Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->g:Lcom/alipay/mobile/commonui/widget/APImageView;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$2$1;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$2$1;->b:Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$2;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$2;->e:Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->g:Lcom/alipay/mobile/commonui/widget/APImageView;

    new-instance v1, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$2$1$2;

    invoke-direct {v1, p0}, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$2$1$2;-><init>(Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$2$1;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
