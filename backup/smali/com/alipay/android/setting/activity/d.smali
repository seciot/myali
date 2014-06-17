.class final Lcom/alipay/android/setting/activity/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox$PWDInputListener;


# instance fields
.field final synthetic a:Landroid/app/AlertDialog;

.field final synthetic b:Lcom/alipay/android/setting/activity/BaseSettingActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/setting/activity/BaseSettingActivity;Landroid/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/setting/activity/d;->b:Lcom/alipay/android/setting/activity/BaseSettingActivity;

    iput-object p2, p0, Lcom/alipay/android/setting/activity/d;->a:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final pwdInputed(ILandroid/text/Editable;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/setting/activity/d;->a:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
