.class final Lcom/alipay/mobile/mobilerechargeapp/activity/bi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/security/TaobaoBindingCallback;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/bi;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final quickBindingFail(Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;)V
    .locals 0

    return-void
.end method

.method public final quickBindingSuccess(Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;)V
    .locals 7

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/bi;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;

    iget-object v0, v0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->e:Lcom/alipay/mobile/commonui/widget/APSpinner;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSpinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/mobilerechargeapp/adapter/EcardVOWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/mobilerechargeapp/adapter/EcardVOWrapper;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/bi;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;

    const-string/jumbo v1, "\u8bf7\u9009\u62e9\u6b63\u786e\u7684\u5145\u503c\u9762\u989d"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/bi;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;

    new-instance v2, Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryInfo;

    iget-object v3, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/bi;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;

    invoke-static {v3}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->e(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/bi;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;

    invoke-static {v4}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->f(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/bi;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;

    iget-object v5, v5, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v5}, Lcom/alipay/mobile/commonui/widget/APTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/alipay/mobile/mobilerechargeapp/adapter/EcardVOWrapper;->a()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->a(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryInfo;)Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryInfo;

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/bi;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;

    iget-object v2, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/bi;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;

    invoke-static {v2}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->e(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->a(Ljava/lang/String;Lcom/alipay/mobile/mobilerechargeapp/adapter/EcardVOWrapper;)V

    goto :goto_0
.end method
