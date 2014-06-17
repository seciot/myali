.class Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$4;->a:Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyyMMdd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$4;->a:Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;

    invoke-static {v2}, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->f(Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$4;->a:Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->a()Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "\u8eab\u4efd\u8bc1\u6709\u6548\u671f\u4e0d\u6b63\u786e\u6216\u5df2\u8fc7\u671f"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->toast(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$4;->a:Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->i:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$4;->a:Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$4;->a:Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->a()Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "\u8eab\u4efd\u8bc1\u7167\u7247\u5f02\u5e38\uff0c\u8bf7\u91cd\u65b0\u62cd\u6444"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$4;->a:Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
