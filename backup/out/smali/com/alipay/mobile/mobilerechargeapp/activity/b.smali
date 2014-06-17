.class final Lcom/alipay/mobile/mobilerechargeapp/activity/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/b;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/b;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/b;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;

    invoke-static {v1}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->a(Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;)Lcom/alipay/mobile/commonui/widget/APInputBox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/mobilerechargeapp/utils/Validator;->b(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method
