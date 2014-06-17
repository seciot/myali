.class final Lcom/alipay/android/setting/activity/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

.field final synthetic b:Lcom/alipay/android/setting/activity/BaseSettingActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/setting/activity/BaseSettingActivity;Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/setting/activity/c;->b:Lcom/alipay/android/setting/activity/BaseSettingActivity;

    iput-object p2, p0, Lcom/alipay/android/setting/activity/c;->a:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/alipay/android/setting/activity/c;->a:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->getInputedPwd(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/setting/activity/c;->b:Lcom/alipay/android/setting/activity/BaseSettingActivity;

    sget v1, Lcom/alipay/android/app/R$string;->N:I

    invoke-static {v0, v1}, Lcom/alipay/android/setting/widgets/CustomToast;->a(Landroid/app/Activity;I)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v1, p0, Lcom/alipay/android/setting/activity/c;->b:Lcom/alipay/android/setting/activity/BaseSettingActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2, v3}, Lcom/alipay/android/setting/activity/BaseSettingActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    iget-object v1, p0, Lcom/alipay/android/setting/activity/c;->b:Lcom/alipay/android/setting/activity/BaseSettingActivity;

    invoke-virtual {v1, v0}, Lcom/alipay/android/setting/activity/BaseSettingActivity;->c(Ljava/lang/String;)V

    goto :goto_0
.end method
