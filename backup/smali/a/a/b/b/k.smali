.class final La/a/b/b/k;
.super Ljava/lang/Object;


# static fields
.field static j:La/a/b/b/k;

.field static k:La/a/b/b/k;

.field static l:La/a/b/b/k;


# instance fields
.field a:Z

.field b:Z

.field c:Z

.field d:Z

.field e:Z

.field f:Z

.field g:Z

.field h:Z

.field i:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-instance v0, La/a/b/b/k;

    invoke-direct {v0}, La/a/b/b/k;-><init>()V

    sput-object v0, La/a/b/b/k;->j:La/a/b/b/k;

    iput-boolean v2, v0, La/a/b/b/k;->a:Z

    sget-object v0, La/a/b/b/k;->j:La/a/b/b/k;

    iput-boolean v1, v0, La/a/b/b/k;->b:Z

    sget-object v0, La/a/b/b/k;->j:La/a/b/b/k;

    iput-boolean v1, v0, La/a/b/b/k;->c:Z

    sget-object v0, La/a/b/b/k;->j:La/a/b/b/k;

    iput-boolean v1, v0, La/a/b/b/k;->d:Z

    sget-object v0, La/a/b/b/k;->j:La/a/b/b/k;

    iput-boolean v2, v0, La/a/b/b/k;->e:Z

    sget-object v0, La/a/b/b/k;->j:La/a/b/b/k;

    iput-boolean v1, v0, La/a/b/b/k;->f:Z

    sget-object v0, La/a/b/b/k;->j:La/a/b/b/k;

    iput-boolean v1, v0, La/a/b/b/k;->g:Z

    sget-object v0, La/a/b/b/k;->j:La/a/b/b/k;

    iput v1, v0, La/a/b/b/k;->i:I

    new-instance v0, La/a/b/b/k;

    invoke-direct {v0}, La/a/b/b/k;-><init>()V

    sput-object v0, La/a/b/b/k;->k:La/a/b/b/k;

    iput-boolean v2, v0, La/a/b/b/k;->a:Z

    sget-object v0, La/a/b/b/k;->k:La/a/b/b/k;

    iput-boolean v2, v0, La/a/b/b/k;->b:Z

    sget-object v0, La/a/b/b/k;->k:La/a/b/b/k;

    iput-boolean v1, v0, La/a/b/b/k;->c:Z

    sget-object v0, La/a/b/b/k;->k:La/a/b/b/k;

    iput-boolean v1, v0, La/a/b/b/k;->d:Z

    sget-object v0, La/a/b/b/k;->k:La/a/b/b/k;

    iput-boolean v1, v0, La/a/b/b/k;->e:Z

    sget-object v0, La/a/b/b/k;->j:La/a/b/b/k;

    iput v2, v0, La/a/b/b/k;->i:I

    new-instance v0, La/a/b/b/k;

    invoke-direct {v0}, La/a/b/b/k;-><init>()V

    sput-object v0, La/a/b/b/k;->l:La/a/b/b/k;

    iput-boolean v1, v0, La/a/b/b/k;->a:Z

    sget-object v0, La/a/b/b/k;->l:La/a/b/b/k;

    iput-boolean v2, v0, La/a/b/b/k;->b:Z

    sget-object v0, La/a/b/b/k;->l:La/a/b/b/k;

    iput-boolean v1, v0, La/a/b/b/k;->c:Z

    sget-object v0, La/a/b/b/k;->l:La/a/b/b/k;

    iput-boolean v2, v0, La/a/b/b/k;->d:Z

    sget-object v0, La/a/b/b/k;->l:La/a/b/b/k;

    iput-boolean v1, v0, La/a/b/b/k;->e:Z

    sget-object v0, La/a/b/b/k;->l:La/a/b/b/k;

    iput-boolean v1, v0, La/a/b/b/k;->h:Z

    sget-object v0, La/a/b/b/k;->l:La/a/b/b/k;

    const/4 v1, 0x2

    iput v1, v0, La/a/b/b/k;->i:I

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, La/a/b/b/k;->a:Z

    iput-boolean v0, p0, La/a/b/b/k;->b:Z

    iput-boolean v1, p0, La/a/b/b/k;->c:Z

    iput-boolean v1, p0, La/a/b/b/k;->d:Z

    iput-boolean v1, p0, La/a/b/b/k;->e:Z

    iput-boolean v0, p0, La/a/b/b/k;->f:Z

    iput-boolean v0, p0, La/a/b/b/k;->g:Z

    iput-boolean v0, p0, La/a/b/b/k;->h:Z

    return-void
.end method

.method private a(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    const/16 v3, 0x24

    const/16 v2, 0x2e

    if-nez p1, :cond_0

    const-string/jumbo v0, "ANONYMOUS"

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, p3}, La/a/b/b/k;->a(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_3

    invoke-virtual {p2, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    :goto_1
    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_3
    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private c(Ljava/lang/StringBuffer;[Ljava/lang/Class;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    const-string/jumbo v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    aget-object v1, p2, v0

    invoke-virtual {p0, v1}, La/a/b/b/k;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method final a(I)Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, La/a/b/b/k;->d:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v0, ""

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, La/a/b/b/k;->a:Z

    invoke-direct {p0, p1, v0, v1}, La/a/b/b/k;->a(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, La/a/b/b/k;->e:Z

    invoke-direct {p0, p1, p2, v0}, La/a/b/b/k;->a(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/StringBuffer;[Ljava/lang/Class;)V
    .locals 1

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, La/a/b/b/k;->b:Z

    if-nez v0, :cond_2

    array-length v0, p2

    if-nez v0, :cond_1

    const-string/jumbo v0, "()"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "(..)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0, p1, p2}, La/a/b/b/k;->c(Ljava/lang/StringBuffer;[Ljava/lang/Class;)V

    const-string/jumbo v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public final b(Ljava/lang/StringBuffer;[Ljava/lang/Class;)V
    .locals 1

    iget-boolean v0, p0, La/a/b/b/k;->c:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, " throws "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0, p1, p2}, La/a/b/b/k;->c(Ljava/lang/StringBuffer;[Ljava/lang/Class;)V

    goto :goto_0
.end method
