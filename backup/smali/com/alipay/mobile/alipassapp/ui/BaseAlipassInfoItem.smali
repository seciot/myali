.class public abstract Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem;
.super Ljava/lang/Object;


# static fields
.field public static final ITEM_FROM_NORMAL:I = 0x0

.field public static final ITEM_FROM_OFFLINE:I = 0x1

.field public static final ITEM_TYPE_COUNT:I = 0x2

.field public static final ITEM_TYPE_DATE:I = 0x1

.field public static final ITEM_TYPE_OBTAINABLE_CARD:I = 0x3

.field public static final ITEM_TYPE_PASS_INFO:I


# instance fields
.field private itemFrom:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem;->itemFrom:I

    return-void
.end method


# virtual methods
.method public abstract getBaseInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;
.end method

.method public getItemFrom()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem;->itemFrom:I

    return v0
.end method

.method public abstract getType()I
.end method

.method public abstract getView(Landroid/content/Context;ILandroid/view/View;)Landroid/view/View;
.end method

.method public setItemFrom(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem;->itemFrom:I

    return-void
.end method
