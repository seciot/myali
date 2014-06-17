.class Lcom/alipay/mobile/lib/model/BaseHomeAdapterItem$2;
.super Ljava/lang/Object;
.source "BaseHomeAdapterItem.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/lib/model/BaseHomeAdapterItem;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/lib/model/BaseHomeAdapterItem;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/alipay/mobile/lib/model/BaseHomeAdapterItem$2;->this$0:Lcom/alipay/mobile/lib/model/BaseHomeAdapterItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/BaseHomeAdapterItem$2;->this$0:Lcom/alipay/mobile/lib/model/BaseHomeAdapterItem;

    invoke-static {v0, p1}, Lcom/alipay/mobile/lib/model/BaseHomeAdapterItem;->access$000(Lcom/alipay/mobile/lib/model/BaseHomeAdapterItem;Landroid/view/View;)V

    .line 78
    const/4 v0, 0x1

    return v0
.end method
