.class Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;

.field final synthetic val$memo:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest$1;->this$0:Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;

    iput-object p2, p0, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest$1;->val$memo:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest$1;->this$0:Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest$1;->val$memo:Ljava/lang/String;

    #calls: Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;->b(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;->access$000(Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;Ljava/lang/String;)V

    return-void
.end method
