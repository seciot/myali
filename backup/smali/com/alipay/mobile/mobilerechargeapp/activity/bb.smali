.class final Lcom/alipay/mobile/mobilerechargeapp/activity/bb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/bb;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/bb;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/bb;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;

    iget-object v0, v0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->c:Lcom/alipay/mobile/mobilerechargeapp/view/APButtonInputBoxAutoC;

    invoke-virtual {v0}, Lcom/alipay/mobile/mobilerechargeapp/view/APButtonInputBoxAutoC;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/bb;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;

    invoke-static {v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->b(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/bb;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;

    iget-object v0, v0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->c:Lcom/alipay/mobile/mobilerechargeapp/view/APButtonInputBoxAutoC;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/mobilerechargeapp/view/APButtonInputBoxAutoC;->showLastImgBtn(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/bb;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/bb;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;

    iget-object v1, v1, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->c:Lcom/alipay/mobile/mobilerechargeapp/view/APButtonInputBoxAutoC;

    invoke-virtual {v1}, Lcom/alipay/mobile/mobilerechargeapp/view/APButtonInputBoxAutoC;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
