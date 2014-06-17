.class final Lcom/alipay/mobile/mobilerechargeapp/activity/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/mobilerechargeapp/activity/BaseListActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/mobilerechargeapp/activity/BaseListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/y;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/BaseListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/y;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/BaseListActivity;

    iget-object v0, v0, Lcom/alipay/mobile/mobilerechargeapp/activity/BaseListActivity;->b:Lcom/alipay/mobile/mobilerechargeapp/view/APButtonInputBoxAutoC;

    invoke-virtual {v0}, Lcom/alipay/mobile/mobilerechargeapp/view/APButtonInputBoxAutoC;->getInputedText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/y;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/BaseListActivity;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BaseListActivity;->a(Ljava/lang/String;)V

    return-void
.end method
