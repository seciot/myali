.class Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;

.field final synthetic val$actionText:Ljava/lang/String;

.field final synthetic val$clickAction:Landroid/view/View$OnClickListener;

.field final synthetic val$emptyTipStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$3;->this$0:Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;

    iput-object p2, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$3;->val$emptyTipStr:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$3;->val$clickAction:Landroid/view/View$OnClickListener;

    iput-object p4, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$3;->val$actionText:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$3;->this$0:Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;

    invoke-static {v0}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->access$100(Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$3;->this$0:Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;

    #getter for: Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->n:Lcom/alipay/mobile/commonui/widget/APFlowTipView;
    invoke-static {v0}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->access$200(Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;)Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->resetFlowTipType(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$3;->this$0:Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;

    #getter for: Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->n:Lcom/alipay/mobile/commonui/widget/APFlowTipView;
    invoke-static {v0}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->access$200(Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;)Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$3;->val$emptyTipStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setTips(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$3;->val$clickAction:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$3;->this$0:Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;

    #getter for: Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->n:Lcom/alipay/mobile/commonui/widget/APFlowTipView;
    invoke-static {v0}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->access$200(Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;)Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$3;->val$actionText:Ljava/lang/String;

    new-instance v2, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$3$1;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$3$1;-><init>(Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$3;)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setAction(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$3;->this$0:Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;

    #getter for: Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->o:Landroid/widget/ScrollView;
    invoke-static {v0}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->access$400(Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;)Landroid/widget/ScrollView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$3;->this$0:Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;

    #getter for: Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->n:Lcom/alipay/mobile/commonui/widget/APFlowTipView;
    invoke-static {v0}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->access$200(Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;)Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->getActionButton()Lcom/alipay/mobile/commonui/widget/APButton;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    goto :goto_0
.end method
