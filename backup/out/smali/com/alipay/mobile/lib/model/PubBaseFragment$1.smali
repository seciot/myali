.class Lcom/alipay/mobile/lib/model/PubBaseFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "PubBaseFragment.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/lib/model/PubBaseFragment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/lib/model/PubBaseFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment$1;->this$0:Lcom/alipay/mobile/lib/model/PubBaseFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment$1;->this$0:Lcom/alipay/mobile/lib/model/PubBaseFragment;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/lib/model/PubBaseFragment;->onReceiveDeleteMessage(Landroid/content/Context;Landroid/content/Intent;)V

    .line 99
    return-void
.end method
