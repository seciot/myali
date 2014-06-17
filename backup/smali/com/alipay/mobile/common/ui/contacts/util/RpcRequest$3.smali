.class Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest$3;->this$0:Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest$3;->this$0:Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;

    #getter for: Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;->c:Landroid/app/Activity;
    invoke-static {v0}, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;->access$100(Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest$3;->this$0:Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;

    #getter for: Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;->c:Landroid/app/Activity;
    invoke-static {v0}, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;->access$100(Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest$3;->this$0:Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;

    #getter for: Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;->c:Landroid/app/Activity;
    invoke-static {v0}, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;->access$100(Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->dismissProgressDialog()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest$3;->this$0:Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;

    #getter for: Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;->c:Landroid/app/Activity;
    invoke-static {v0}, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;->access$100(Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest$3;->this$0:Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;

    #getter for: Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;->c:Landroid/app/Activity;
    invoke-static {v0}, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;->access$100(Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->dismissProgressDialog()V

    goto :goto_0
.end method
