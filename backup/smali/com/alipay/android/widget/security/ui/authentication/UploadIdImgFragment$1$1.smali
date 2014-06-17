.class Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$1;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$1;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$1$1;->a:Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$1$1;->a:Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$1;

    iget-object v1, v0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$1;->b:[Ljava/io/File;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    iget-object v4, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$1$1;->a:Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$1;

    iget-object v4, v4, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$1;->c:Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;

    iget-object v4, v4, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->i:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
