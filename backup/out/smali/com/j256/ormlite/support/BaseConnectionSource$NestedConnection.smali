.class Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field public final connection:Lcom/j256/ormlite/support/DatabaseConnection;


# direct methods
.method public constructor <init>(Lcom/j256/ormlite/support/DatabaseConnection;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;->connection:Lcom/j256/ormlite/support/DatabaseConnection;

    const/4 v0, 0x1

    iput v0, p0, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;->a:I

    return-void
.end method


# virtual methods
.method public decrementAndGet()I
    .locals 1

    iget v0, p0, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;->a:I

    iget v0, p0, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;->a:I

    return v0
.end method

.method public increment()V
    .locals 1

    iget v0, p0, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;->a:I

    return-void
.end method
