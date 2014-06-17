.class final Lcom/alipay/mobile/mobilerechargeapp/adapter/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/mobilerechargeapp/adapter/AutoComlieteListAdapter;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/mobilerechargeapp/adapter/AutoComlieteListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/b;->a:Lcom/alipay/mobile/mobilerechargeapp/adapter/AutoComlieteListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/b;->a:Lcom/alipay/mobile/mobilerechargeapp/adapter/AutoComlieteListAdapter;

    invoke-static {v0}, Lcom/alipay/mobile/mobilerechargeapp/adapter/AutoComlieteListAdapter;->a(Lcom/alipay/mobile/mobilerechargeapp/adapter/AutoComlieteListAdapter;)Lcom/alipay/mobile/mobilerechargeapp/data/AutoInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/b;->a:Lcom/alipay/mobile/mobilerechargeapp/adapter/AutoComlieteListAdapter;

    invoke-static {v0}, Lcom/alipay/mobile/mobilerechargeapp/adapter/AutoComlieteListAdapter;->a(Lcom/alipay/mobile/mobilerechargeapp/adapter/AutoComlieteListAdapter;)Lcom/alipay/mobile/mobilerechargeapp/data/AutoInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/mobilerechargeapp/data/AutoInterface;->a()V

    :cond_0
    return-void
.end method
