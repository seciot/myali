.class Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$3;->a:Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    new-instance v0, Lcom/alipay/android/widget/security/ui/authentication/DatePickerDialog;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$3;->a:Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;

    invoke-virtual {v1}, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$style;->a:I

    new-instance v2, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$3$1;

    invoke-direct {v2, p0}, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$3$1;-><init>(Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$3;)V

    iget-object v3, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$3;->a:Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;

    invoke-static {v3}, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->c(Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;)I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$3;->a:Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;

    invoke-static {v3}, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->c(Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;)I

    move-result v3

    :goto_0
    iget-object v4, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$3;->a:Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;

    invoke-static {v4}, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->d(Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;)I

    move-result v4

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$3;->a:Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;

    invoke-static {v4}, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->d(Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_1
    iget-object v6, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$3;->a:Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;

    invoke-static {v6}, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->e(Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;)I

    move-result v6

    if-lez v6, :cond_2

    iget-object v5, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment$3;->a:Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;

    invoke-static {v5}, Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;->e(Lcom/alipay/android/widget/security/ui/authentication/UploadIdImgFragment;)I

    move-result v5

    :goto_2
    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/widget/security/ui/authentication/DatePickerDialog;-><init>(Landroid/content/Context;Lcom/alipay/android/widget/security/ui/authentication/DatePickerDialog$OnDateSetListener;III)V

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/ui/authentication/DatePickerDialog;->show()V

    :goto_3
    return-void

    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    invoke-virtual {v5, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    goto :goto_1

    :cond_2
    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_3
.end method
