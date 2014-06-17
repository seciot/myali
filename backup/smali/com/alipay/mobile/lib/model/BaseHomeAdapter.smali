.class public abstract Lcom/alipay/mobile/lib/model/BaseHomeAdapter;
.super Landroid/widget/BaseAdapter;
.source "BaseHomeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/alipay/mobile/lib/model/ResponseBaseMessage;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private b:Lcom/alipay/mobile/lib/model/BaseHomeAdapter$OnDataChangedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alipay/mobile/lib/model/BaseHomeAdapter$OnDataChangedListener",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/lib/model/BaseHomeAdapter;->a:Ljava/util/List;

    .line 26
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 151
    new-instance v0, Lcom/alipay/mobile/lib/model/BaseHomeAdapter$3;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/lib/model/BaseHomeAdapter$3;-><init>(Lcom/alipay/mobile/lib/model/BaseHomeAdapter;Ljava/util/List;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 160
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/lib/model/BaseHomeAdapter;)Lcom/alipay/mobile/lib/model/BaseHomeAdapter$OnDataChangedListener;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/BaseHomeAdapter;->b:Lcom/alipay/mobile/lib/model/BaseHomeAdapter$OnDataChangedListener;

    return-object v0
.end method


# virtual methods
.method public final addBottomSourceData(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/BaseHomeAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 86
    invoke-virtual {p0}, Lcom/alipay/mobile/lib/model/BaseHomeAdapter;->notifyDataSetChanged()V

    .line 87
    invoke-direct {p0, p1}, Lcom/alipay/mobile/lib/model/BaseHomeAdapter;->a(Ljava/util/List;)V

    .line 88
    return-void
.end method

.method public final addTopSourceData(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 62
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_1
    if-ltz v2, :cond_4

    .line 67
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/lib/model/ResponseBaseMessage;

    .line 68
    iget-object v1, p0, Lcom/alipay/mobile/lib/model/BaseHomeAdapter;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/lib/model/ResponseBaseMessage;

    .line 70
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/lib/model/BaseHomeAdapter;->isDuplicateMessage(Lcom/alipay/mobile/lib/model/ResponseBaseMessage;Lcom/alipay/mobile/lib/model/ResponseBaseMessage;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 71
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 66
    :cond_3
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    .line 77
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/BaseHomeAdapter;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 79
    invoke-virtual {p0}, Lcom/alipay/mobile/lib/model/BaseHomeAdapter;->notifyDataSetChanged()V

    .line 80
    invoke-direct {p0, p1}, Lcom/alipay/mobile/lib/model/BaseHomeAdapter;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method public clearData()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/BaseHomeAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 147
    invoke-virtual {p0}, Lcom/alipay/mobile/lib/model/BaseHomeAdapter;->notifyDataSetInvalidated()V

    .line 148
    return-void
.end method

.method public final deleteItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 119
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/BaseHomeAdapter;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/lib/model/BaseHomeAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/BaseHomeAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 124
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/BaseHomeAdapter;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/lib/model/ResponseBaseMessage;

    .line 125
    iget-object v3, v0, Lcom/alipay/mobile/lib/model/ResponseBaseMessage;->mMsgType:Ljava/lang/String;

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v0, v0, Lcom/alipay/mobile/lib/model/ResponseBaseMessage;->mMsgId:Ljava/lang/String;

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    :goto_2
    if-eq v1, v2, :cond_0

    .line 132
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/BaseHomeAdapter;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/lib/model/ResponseBaseMessage;

    .line 133
    new-instance v1, Lcom/alipay/mobile/lib/model/BaseHomeAdapter$2;

    invoke-direct {v1, p0, v0}, Lcom/alipay/mobile/lib/model/BaseHomeAdapter$2;-><init>(Lcom/alipay/mobile/lib/model/BaseHomeAdapter;Lcom/alipay/mobile/lib/model/ResponseBaseMessage;)V

    invoke-static {v1}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 141
    invoke-virtual {p0}, Lcom/alipay/mobile/lib/model/BaseHomeAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 123
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/BaseHomeAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Lcom/alipay/mobile/lib/model/ResponseBaseMessage;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/alipay/mobile/lib/model/BaseHomeAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/BaseHomeAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/lib/model/ResponseBaseMessage;

    .line 58
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/lib/model/BaseHomeAdapter;->getItem(I)Lcom/alipay/mobile/lib/model/ResponseBaseMessage;

    move-result-object v0

    return-object v0
.end method

.method public getOnDataChangedListener()Lcom/alipay/mobile/lib/model/BaseHomeAdapter$OnDataChangedListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/alipay/mobile/lib/model/BaseHomeAdapter$OnDataChangedListener",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/BaseHomeAdapter;->b:Lcom/alipay/mobile/lib/model/BaseHomeAdapter$OnDataChangedListener;

    return-object v0
.end method

.method protected abstract isDuplicateMessage(Lcom/alipay/mobile/lib/model/ResponseBaseMessage;Lcom/alipay/mobile/lib/model/ResponseBaseMessage;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation
.end method

.method public setOnDataChangedListener(Lcom/alipay/mobile/lib/model/BaseHomeAdapter$OnDataChangedListener;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/lib/model/BaseHomeAdapter$OnDataChangedListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 45
    iput-object p1, p0, Lcom/alipay/mobile/lib/model/BaseHomeAdapter;->b:Lcom/alipay/mobile/lib/model/BaseHomeAdapter$OnDataChangedListener;

    .line 46
    return-void
.end method

.method public final syncBeanStatus(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 91
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/BaseHomeAdapter;->a:Ljava/util/List;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    move v2, v3

    .line 92
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    move v4, v3

    .line 93
    :goto_1
    invoke-virtual {p0}, Lcom/alipay/mobile/lib/model/BaseHomeAdapter;->getCount()I

    move-result v0

    if-ge v4, v0, :cond_1

    .line 94
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/lib/model/ResponseBaseMessage;

    .line 95
    iget-object v1, p0, Lcom/alipay/mobile/lib/model/BaseHomeAdapter;->a:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/lib/model/ResponseBaseMessage;

    .line 96
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 97
    iget-object v5, v0, Lcom/alipay/mobile/lib/model/ResponseBaseMessage;->mMsgId:Ljava/lang/String;

    iget-object v1, v1, Lcom/alipay/mobile/lib/model/ResponseBaseMessage;->mMsgId:Ljava/lang/String;

    invoke-static {v5, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/alipay/mobile/lib/model/BaseHomeAdapter;->a:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 99
    iget-object v1, p0, Lcom/alipay/mobile/lib/model/BaseHomeAdapter;->a:Ljava/util/List;

    invoke-interface {v1, v4, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 100
    new-instance v1, Lcom/alipay/mobile/lib/model/BaseHomeAdapter$1;

    invoke-direct {v1, p0, v0}, Lcom/alipay/mobile/lib/model/BaseHomeAdapter$1;-><init>(Lcom/alipay/mobile/lib/model/BaseHomeAdapter;Lcom/alipay/mobile/lib/model/ResponseBaseMessage;)V

    invoke-static {v1}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 93
    :cond_0
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 92
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 115
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/lib/model/BaseHomeAdapter;->notifyDataSetChanged()V

    .line 116
    return-void
.end method
