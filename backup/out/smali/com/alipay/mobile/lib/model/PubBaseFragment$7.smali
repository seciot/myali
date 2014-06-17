.class Lcom/alipay/mobile/lib/model/PubBaseFragment$7;
.super Ljava/lang/Object;
.source "PubBaseFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/lib/model/PubBaseFragment;

.field final synthetic val$needFinish:Z


# direct methods
.method constructor <init>(Lcom/alipay/mobile/lib/model/PubBaseFragment;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 524
    iput-object p1, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment$7;->this$0:Lcom/alipay/mobile/lib/model/PubBaseFragment;

    iput-boolean p2, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment$7;->val$needFinish:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 527
    iget-boolean v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment$7;->val$needFinish:Z

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/PubBaseFragment$7;->this$0:Lcom/alipay/mobile/lib/model/PubBaseFragment;

    iget-object v0, v0, Lcom/alipay/mobile/lib/model/PubBaseFragment;->mContext:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->finish()V

    .line 532
    :goto_0
    return-void

    .line 530
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method
