.class public Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:Z

.field private c:I


# direct methods
.method public constructor <init>(ZZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;->a:Z

    iput-boolean p2, p0, Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;->b:Z

    iput p3, p0, Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;->c:I

    return-void
.end method


# virtual methods
.method public getNumLinesChanged()I
    .locals 1

    iget v0, p0, Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;->c:I

    return v0
.end method

.method public isCreated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;->a:Z

    return v0
.end method

.method public isUpdated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;->b:Z

    return v0
.end method
