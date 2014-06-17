.class Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;

.field final synthetic val$params:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;[Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$1;->this$0:Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;

    iput-object p2, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$1;->val$params:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$1;->this$0:Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;

    iget-object v1, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$1;->val$params:[Ljava/lang/Object;

    #calls: Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->a([Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->access$000(Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;[Ljava/lang/Object;)V

    return-void
.end method
