.class public Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListStatus;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
    tableName = "alipassliststatus"
.end annotation


# static fields
.field public static final BIZTYPE:Ljava/lang/String; = "bizType"

.field public static final USERID:Ljava/lang/String; = "userId"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private bizType:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private hasPast:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private id:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        generatedId = true
    .end annotation
.end field

.field private userId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBizType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListStatus;->bizType:Ljava/lang/String;

    return-object v0
.end method

.method public getHasPast()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListStatus;->hasPast:I

    return v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListStatus;->id:I

    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListStatus;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setBizType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListStatus;->bizType:Ljava/lang/String;

    return-void
.end method

.method public setHasPast(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListStatus;->hasPast:I

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListStatus;->id:I

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListStatus;->userId:Ljava/lang/String;

    return-void
.end method
