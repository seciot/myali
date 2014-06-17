.class public abstract Lcom/alipay/mobile/lib/model/BaseHomeAdapterItem;
.super Ljava/lang/Object;
.source "BaseHomeAdapterItem.java"

# interfaces
.implements Lcom/alipay/mobile/lib/model/AdapterItem;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/alipay/mobile/lib/model/ResponseBaseMessage;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/alipay/mobile/lib/model/AdapterItem",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private a:Landroid/view/View$OnClickListener;

.field private b:Landroid/view/View$OnLongClickListener;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lcom/alipay/mobile/lib/model/BaseHomeAdapterItem$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/lib/model/BaseHomeAdapterItem$1;-><init>(Lcom/alipay/mobile/lib/model/BaseHomeAdapterItem;)V

    iput-object v0, p0, Lcom/alipay/mobile/lib/model/BaseHomeAdapterItem;->a:Landroid/view/View$OnClickListener;

    .line 73
    new-instance v0, Lcom/alipay/mobile/lib/model/BaseHomeAdapterItem$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/lib/model/BaseHomeAdapterItem$2;-><init>(Lcom/alipay/mobile/lib/model/BaseHomeAdapterItem;)V

    iput-object v0, p0, Lcom/alipay/mobile/lib/model/BaseHomeAdapterItem;->b:Landroid/view/View$OnLongClickListener;

    .line 16
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/lib/model/BaseHomeAdapterItem;Landroid/view/View;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 11
    sget v0, Lcom/alipay/mobile/publicsvc/common/R$id;->url_tag:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/alipay/mobile/lib/model/MessageActionParams;

    if-eqz v0, :cond_0

    sget v0, Lcom/alipay/mobile/publicsvc/common/R$id;->url_tag:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/lib/model/MessageActionParams;

    iget-boolean v0, v0, Lcom/alipay/mobile/lib/model/MessageActionParams;->longClickDelete:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/lib/model/BaseHomeAdapterItem;->showConfirm(Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract clickItem(Landroid/view/View;)V
.end method

.method protected abstract getInflater()Landroid/view/LayoutInflater;
.end method

.method protected abstract getMsgClickReplaceBean(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/lib/model/RequestBaseMessage;
.end method

.method protected initViewClick(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;ZZILcom/alipay/mobile/lib/model/ResponseBaseMessage;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZITT;)V"
        }
    .end annotation

    .prologue
    .line 46
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/alipay/mobile/lib/model/BaseHomeAdapterItem;->initViewClick(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;ZZILcom/alipay/mobile/lib/model/ResponseBaseMessage;I)V

    .line 48
    return-void
.end method

.method protected initViewClick(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;ZZILcom/alipay/mobile/lib/model/ResponseBaseMessage;I)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZITT;I)V"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/BaseHomeAdapterItem;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    const/4 v0, -0x1

    if-eq p6, v0, :cond_0

    .line 32
    invoke-virtual {p1, p6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 34
    :cond_0
    sget v7, Lcom/alipay/mobile/publicsvc/common/R$id;->url_tag:I

    new-instance v0, Lcom/alipay/mobile/lib/model/MessageActionParams;

    move-object v1, p2

    move-object v2, p3

    move v3, p5

    move v4, p4

    move-object v5, p7

    move/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/lib/model/MessageActionParams;-><init>(Ljava/lang/String;Ljava/lang/String;ZZLcom/alipay/mobile/lib/model/ResponseBaseMessage;I)V

    invoke-virtual {p1, v7, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 36
    if-eqz p4, :cond_1

    .line 37
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/BaseHomeAdapterItem;->b:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 41
    :goto_0
    return-void

    .line 39
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0
.end method

.method protected showConfirm(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    return-void
.end method

.method protected abstract writeLog(Lcom/alipay/mobile/lib/model/MessageActionParams;)V
.end method
