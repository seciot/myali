.class Lcom/j256/ormlite/dao/BaseDaoImpl$DaoConfigArray;
.super Ljava/lang/Object;


# instance fields
.field private a:[Lcom/j256/ormlite/dao/BaseDaoImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/j256/ormlite/dao/BaseDaoImpl",
            "<**>;"
        }
    .end annotation
.end field

.field private b:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/j256/ormlite/dao/BaseDaoImpl;

    iput-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl$DaoConfigArray;->a:[Lcom/j256/ormlite/dao/BaseDaoImpl;

    const/4 v0, 0x0

    iput v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl$DaoConfigArray;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/j256/ormlite/dao/BaseDaoImpl$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl$DaoConfigArray;-><init>()V

    return-void
.end method


# virtual methods
.method public addDao(Lcom/j256/ormlite/dao/BaseDaoImpl;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/dao/BaseDaoImpl",
            "<**>;)V"
        }
    .end annotation

    iget v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl$DaoConfigArray;->b:I

    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl$DaoConfigArray;->a:[Lcom/j256/ormlite/dao/BaseDaoImpl;

    array-length v1, v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl$DaoConfigArray;->a:[Lcom/j256/ormlite/dao/BaseDaoImpl;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v1, v0, [Lcom/j256/ormlite/dao/BaseDaoImpl;

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl$DaoConfigArray;->a:[Lcom/j256/ormlite/dao/BaseDaoImpl;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl$DaoConfigArray;->a:[Lcom/j256/ormlite/dao/BaseDaoImpl;

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl$DaoConfigArray;->a:[Lcom/j256/ormlite/dao/BaseDaoImpl;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl$DaoConfigArray;->a:[Lcom/j256/ormlite/dao/BaseDaoImpl;

    :cond_1
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl$DaoConfigArray;->a:[Lcom/j256/ormlite/dao/BaseDaoImpl;

    iget v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl$DaoConfigArray;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl$DaoConfigArray;->b:I

    aput-object p1, v0, v1

    return-void
.end method

.method public clear()V
    .locals 4

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl$DaoConfigArray;->b:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl$DaoConfigArray;->a:[Lcom/j256/ormlite/dao/BaseDaoImpl;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl$DaoConfigArray;->b:I

    return-void
.end method

.method public get(I)Lcom/j256/ormlite/dao/BaseDaoImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/j256/ormlite/dao/BaseDaoImpl",
            "<**>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl$DaoConfigArray;->a:[Lcom/j256/ormlite/dao/BaseDaoImpl;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl$DaoConfigArray;->b:I

    return v0
.end method
