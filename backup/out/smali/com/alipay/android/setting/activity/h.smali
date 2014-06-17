.class final Lcom/alipay/android/setting/activity/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/APAbsTableView$OnSwitchListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/setting/activity/NoPasswordActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/setting/activity/NoPasswordActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/setting/activity/h;->a:Lcom/alipay/android/setting/activity/NoPasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSwitchListener(ZLandroid/view/View;)V
    .locals 3

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/setting/activity/h;->a:Lcom/alipay/android/setting/activity/NoPasswordActivity;

    iget-object v1, p0, Lcom/alipay/android/setting/activity/h;->a:Lcom/alipay/android/setting/activity/NoPasswordActivity;

    iget-object v1, v1, Lcom/alipay/android/setting/activity/NoPasswordActivity;->a:Lcom/alipay/android/setting/request/RequestContainer;

    iget v1, v1, Lcom/alipay/android/setting/request/RequestContainer;->f:I

    invoke-static {v0, v1}, Lcom/alipay/android/setting/activity/NoPasswordActivity;->a(Lcom/alipay/android/setting/activity/NoPasswordActivity;I)I

    iget-object v0, p0, Lcom/alipay/android/setting/activity/h;->a:Lcom/alipay/android/setting/activity/NoPasswordActivity;

    invoke-static {v0}, Lcom/alipay/android/setting/activity/NoPasswordActivity;->a(Lcom/alipay/android/setting/activity/NoPasswordActivity;)Lcom/alipay/android/setting/widgets/CustomProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alipay/android/setting/widgets/CustomProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/setting/activity/h;->a:Lcom/alipay/android/setting/activity/NoPasswordActivity;

    invoke-static {v0}, Lcom/alipay/android/setting/activity/NoPasswordActivity;->b(Lcom/alipay/android/setting/activity/NoPasswordActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/setting/activity/h;->a:Lcom/alipay/android/setting/activity/NoPasswordActivity;

    invoke-static {v0}, Lcom/alipay/android/setting/activity/NoPasswordActivity;->c(Lcom/alipay/android/setting/activity/NoPasswordActivity;)Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->setType(I)V

    const-string/jumbo v0, "SPSafePay"

    invoke-static {v0}, Lcom/alipay/android/mini/util/LogAgent;->j(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "SPSafePay"

    invoke-static {v0}, Lcom/alipay/android/mini/util/LogAgent;->k(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/setting/activity/h;->a:Lcom/alipay/android/setting/activity/NoPasswordActivity;

    invoke-static {v0, v2}, Lcom/alipay/android/setting/activity/NoPasswordActivity;->a(Lcom/alipay/android/setting/activity/NoPasswordActivity;I)I

    iget-object v0, p0, Lcom/alipay/android/setting/activity/h;->a:Lcom/alipay/android/setting/activity/NoPasswordActivity;

    invoke-static {v0}, Lcom/alipay/android/setting/activity/NoPasswordActivity;->a(Lcom/alipay/android/setting/activity/NoPasswordActivity;)Lcom/alipay/android/setting/widgets/CustomProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/android/setting/widgets/CustomProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/setting/activity/h;->a:Lcom/alipay/android/setting/activity/NoPasswordActivity;

    invoke-static {v0}, Lcom/alipay/android/setting/activity/NoPasswordActivity;->b(Lcom/alipay/android/setting/activity/NoPasswordActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/setting/activity/h;->a:Lcom/alipay/android/setting/activity/NoPasswordActivity;

    invoke-static {v0}, Lcom/alipay/android/setting/activity/NoPasswordActivity;->c(Lcom/alipay/android/setting/activity/NoPasswordActivity;)Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->setType(I)V

    goto :goto_0
.end method
