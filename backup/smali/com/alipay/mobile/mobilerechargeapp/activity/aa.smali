.class final Lcom/alipay/mobile/mobilerechargeapp/activity/aa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter$OperationListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/aa;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/aa;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;

    invoke-static {v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->a(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/aa;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;

    invoke-static {v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->b(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;)Z

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/aa;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;

    invoke-static {v0}, Lcom/alipay/mobile/mobilerechargeapp/utils/LogAgentWriteLog;->c(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/aa;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;

    invoke-static {v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->c(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/aa;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;

    const-class v3, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity_;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/aa;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;

    invoke-static {v2}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->d(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v2

    const/16 v3, 0xa

    invoke-interface {v0, v2, v1, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivityForResult(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public final a(I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onStartCmsListener ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/aa;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;

    invoke-static {v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->e(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/aa;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;

    const-class v3, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnCmsActivity_;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/aa;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;

    invoke-static {v2}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->f(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v2

    const/16 v3, 0xa

    invoke-interface {v0, v2, v1, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivityForResult(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;I)V

    return-void
.end method

.method public final a(IZ)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onSwitchListener pos = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " isOff = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/aa;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/aa;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;

    iget-object v0, v0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;

    iget-object v2, v0, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/aa;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;

    iget-object v0, v0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;

    iget v0, v0, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;->d:I

    invoke-virtual {v1, v2, p1, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->a(Ljava/lang/String;II)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/aa;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/aa;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;

    iget-object v0, v0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;

    iget-object v2, v0, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/aa;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;

    iget-object v0, v0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;

    iget v0, v0, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;->d:I

    invoke-virtual {v1, v2, p1, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->b(Ljava/lang/String;II)V

    goto :goto_0
.end method
