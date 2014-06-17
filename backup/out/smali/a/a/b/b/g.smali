.class abstract La/a/b/b/g;
.super Ljava/lang/Object;

# interfaces
.implements La/a/a/e;


# static fields
.field private static a:Z

.field static k:[Ljava/lang/String;

.field static l:[Ljava/lang/Class;


# instance fields
.field private b:Ljava/lang/String;

.field e:I

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/lang/Class;

.field i:La/a/b/b/h;

.field j:Ljava/lang/ClassLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    sput-boolean v0, La/a/b/b/g;->a:Z

    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, La/a/b/b/g;->k:[Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/Class;

    sput-object v0, La/a/b/b/g;->l:[Ljava/lang/Class;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/Class;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, La/a/b/b/g;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, La/a/b/b/g;->j:Ljava/lang/ClassLoader;

    iput p1, p0, La/a/b/b/g;->e:I

    iput-object p2, p0, La/a/b/b/g;->f:Ljava/lang/String;

    iput-object p3, p0, La/a/b/b/g;->h:Ljava/lang/Class;

    return-void
.end method

.method private b()Ljava/lang/ClassLoader;
    .locals 1

    iget-object v0, p0, La/a/b/b/g;->j:Ljava/lang/ClassLoader;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, La/a/b/b/g;->j:Ljava/lang/ClassLoader;

    :cond_0
    iget-object v0, p0, La/a/b/b/g;->j:Ljava/lang/ClassLoader;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, La/a/b/b/g;->h:Ljava/lang/Class;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, La/a/b/b/g;->b(I)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, La/a/b/b/g;->h:Ljava/lang/Class;

    :cond_0
    iget-object v0, p0, La/a/b/b/g;->h:Ljava/lang/Class;

    return-object v0
.end method

.method final a(I)Ljava/lang/String;
    .locals 4

    const/16 v3, 0x2d

    const/4 v1, 0x0

    iget-object v0, p0, La/a/b/b/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    :goto_0
    add-int/lit8 v2, p1, -0x1

    if-lez p1, :cond_0

    add-int/lit8 v1, v0, 0x1

    iget-object v0, p0, La/a/b/b/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    move p1, v2

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, La/a/b/b/g;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :cond_1
    iget-object v2, p0, La/a/b/b/g;->b:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract a(La/a/b/b/k;)Ljava/lang/String;
.end method

.method final b(I)Ljava/lang/Class;
    .locals 2

    invoke-virtual {p0, p1}, La/a/b/b/g;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, La/a/b/b/g;->b()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v1}, La/a/b/b/b;->a(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method final b(La/a/b/b/k;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    sget-boolean v1, La/a/b/b/g;->a:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, La/a/b/b/g;->i:La/a/b/b/h;

    if-nez v1, :cond_3

    :try_start_0
    new-instance v1, La/a/b/b/i;

    invoke-direct {v1}, La/a/b/b/i;-><init>()V

    iput-object v1, p0, La/a/b/b/g;->i:La/a/b/b/h;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, La/a/b/b/g;->a(La/a/b/b/k;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    sget-boolean v1, La/a/b/b/g;->a:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, La/a/b/b/g;->i:La/a/b/b/h;

    iget v2, p1, La/a/b/b/k;->i:I

    invoke-interface {v1, v2, v0}, La/a/b/b/h;->a(ILjava/lang/String;)V

    :cond_2
    return-object v0

    :catch_0
    move-exception v1

    const/4 v1, 0x0

    sput-boolean v1, La/a/b/b/g;->a:Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, La/a/b/b/g;->i:La/a/b/b/h;

    iget v1, p1, La/a/b/b/k;->i:I

    invoke-interface {v0, v1}, La/a/b/b/h;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method final c(I)[Ljava/lang/Class;
    .locals 6

    invoke-virtual {p0, p1}, La/a/b/b/g;->a(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/StringTokenizer;

    const-string/jumbo v2, ":"

    invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v2

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, La/a/b/b/g;->b()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-static {v4, v5}, La/a/b/b/b;->a(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    sget-object v0, La/a/b/b/k;->k:La/a/b/b/k;

    invoke-virtual {p0, v0}, La/a/b/b/g;->b(La/a/b/b/k;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
