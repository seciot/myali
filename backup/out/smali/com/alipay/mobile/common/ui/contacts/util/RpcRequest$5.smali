.class Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest$5;->this$0:Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
