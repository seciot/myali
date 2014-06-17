.class Lcom/alipay/mobile/common/misc/ExpandableCommissionListView$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;

.field final synthetic val$groupPosition:I


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;I)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView$1;->this$0:Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;

    iput p2, p0, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView$1;->val$groupPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView$1;->this$0:Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;

    iget v1, p0, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView$1;->val$groupPosition:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->setSelectedGroup(I)V

    return-void
.end method
