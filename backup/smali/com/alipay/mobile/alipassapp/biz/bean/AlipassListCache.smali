.class public Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
    tableName = "alipasslistcache"
.end annotation


# static fields
.field public static final BIZTYPE:Ljava/lang/String; = "bizType"

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final ID:Ljava/lang/String; = "id"

.field public static final PASSBASEINFO:Ljava/lang/String; = "passBaseInfo"

.field public static final PASSID:Ljava/lang/String; = "passId"

.field public static final STATUS:Ljava/lang/String; = "status"

.field public static final STATUS_DELETED:I = 0x4

.field public static final STATUS_FOR_DELETE:I = 0x3

.field public static final STATUS_NORMAL:I = 0x0

.field public static final USERID:Ljava/lang/String; = "userId"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private bizType:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private date:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private gmtModified:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private id:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        generatedId = true
    .end annotation
.end field

.field private passBaseInfo:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private passId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private status:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private userId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;->status:I

    return-void
.end method


# virtual methods
.method public getBizType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;->bizType:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getGmtModified()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;->gmtModified:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;->id:I

    return v0
.end method

.method public getPassBaseInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;->passBaseInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getPassId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;->passId:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;->status:I

    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setBizType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;->bizType:Ljava/lang/String;

    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;->date:Ljava/lang/String;

    return-void
.end method

.method public setGmtModified(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;->gmtModified:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;->id:I

    return-void
.end method

.method public setPassBaseInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;->passBaseInfo:Ljava/lang/String;

    return-void
.end method

.method public setPassId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;->passId:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;->status:I

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;->userId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "bizType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;->bizType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;->date:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", passId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;->passId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", passBaseInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;->passBaseInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
