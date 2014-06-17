.class final Lcom/alipay/mobile/mobilerechargeapp/adapter/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;

.field final synthetic b:Lcom/alipay/mobile/mobilerechargeapp/adapter/AutoComlieteListAdapter;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/mobilerechargeapp/adapter/AutoComlieteListAdapter;Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/d;->b:Lcom/alipay/mobile/mobilerechargeapp/adapter/AutoComlieteListAdapter;

    iput-object p2, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/d;->a:Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/d;->b:Lcom/alipay/mobile/mobilerechargeapp/adapter/AutoComlieteListAdapter;

    invoke-static {v0}, Lcom/alipay/mobile/mobilerechargeapp/adapter/AutoComlieteListAdapter;->a(Lcom/alipay/mobile/mobilerechargeapp/adapter/AutoComlieteListAdapter;)Lcom/alipay/mobile/mobilerechargeapp/data/AutoInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/d;->b:Lcom/alipay/mobile/mobilerechargeapp/adapter/AutoComlieteListAdapter;

    invoke-static {v0}, Lcom/alipay/mobile/mobilerechargeapp/adapter/AutoComlieteListAdapter;->a(Lcom/alipay/mobile/mobilerechargeapp/adapter/AutoComlieteListAdapter;)Lcom/alipay/mobile/mobilerechargeapp/data/AutoInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/d;->a:Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/mobilerechargeapp/data/AutoInterface;->a(Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;Z)V

    :cond_0
    return-void
.end method
