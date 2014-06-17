.class Lcom/alipay/mobile/lib/model/BaseHomeAdapter$3;
.super Ljava/lang/Object;
.source "BaseHomeAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/lib/model/BaseHomeAdapter;

.field final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/lib/model/BaseHomeAdapter;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/alipay/mobile/lib/model/BaseHomeAdapter$3;->this$0:Lcom/alipay/mobile/lib/model/BaseHomeAdapter;

    iput-object p2, p0, Lcom/alipay/mobile/lib/model/BaseHomeAdapter$3;->val$list:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/BaseHomeAdapter$3;->this$0:Lcom/alipay/mobile/lib/model/BaseHomeAdapter;

    #getter for: Lcom/alipay/mobile/lib/model/BaseHomeAdapter;->b:Lcom/alipay/mobile/lib/model/BaseHomeAdapter$OnDataChangedListener;
    invoke-static {v0}, Lcom/alipay/mobile/lib/model/BaseHomeAdapter;->access$000(Lcom/alipay/mobile/lib/model/BaseHomeAdapter;)Lcom/alipay/mobile/lib/model/BaseHomeAdapter$OnDataChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/BaseHomeAdapter$3;->this$0:Lcom/alipay/mobile/lib/model/BaseHomeAdapter;

    #getter for: Lcom/alipay/mobile/lib/model/BaseHomeAdapter;->b:Lcom/alipay/mobile/lib/model/BaseHomeAdapter$OnDataChangedListener;
    invoke-static {v0}, Lcom/alipay/mobile/lib/model/BaseHomeAdapter;->access$000(Lcom/alipay/mobile/lib/model/BaseHomeAdapter;)Lcom/alipay/mobile/lib/model/BaseHomeAdapter$OnDataChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/lib/model/BaseHomeAdapter$3;->val$list:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/lib/model/BaseHomeAdapter$OnDataChangedListener;->onDataAdd(Ljava/util/List;)V

    .line 158
    :cond_0
    return-void
.end method
