.class Lcom/alipay/mobile/lib/model/PubBaseFragment$3;
.super Ljava/lang/Object;
.source "PubBaseFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/lib/model/PubBaseFragment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/lib/model/PubBaseFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment$3;->this$0:Lcom/alipay/mobile/lib/model/PubBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment$3;->this$0:Lcom/alipay/mobile/lib/model/PubBaseFragment;

    invoke-virtual {v0}, Lcom/alipay/mobile/lib/model/PubBaseFragment;->flowTipRetry()V

    .line 122
    return-void
.end method
