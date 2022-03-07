import React from "react";
import { alpha, makeStyles } from "@material-ui/core/styles";
import AppBar from "@material-ui/core/AppBar";
import Toolbar from "@material-ui/core/Toolbar";
import IconButton from "@material-ui/core/IconButton";
import Typography from "@material-ui/core/Typography";
import InputBase from "@material-ui/core/InputBase";
import Badge from "@material-ui/core/Badge";
import { Avatar } from "@material-ui/core";
import { deepPurple } from "@material-ui/core/colors";
import MenuItem from "@material-ui/core/MenuItem";
import Menu from "@material-ui/core/Menu";
import MenuIcon from "@material-ui/icons/Menu";
import AddShoppingCartIcon from "@material-ui/icons/AddShoppingCart";
import HomeIcon from "@material-ui/icons/Home";
import HistoryIcon from "@material-ui/icons/History";
import SearchIcon from "@material-ui/icons/Search";
import AccountCircle from "@material-ui/icons/AccountCircle";
import MoreIcon from "@material-ui/icons/MoreVert";
import { isAuthenticated } from "../../api/user/auth";

const useStyles = makeStyles((theme) => ({
  grow: {
    flexGrow: 1,
  },
  appBar: {
    background: "#14a098",
  },
  menuButton: {
    marginRight: theme.spacing(2),
  },
  title: {
    display: "none",
    [theme.breakpoints.up("sm")]: {
      display: "block",
    },
  },
  search: {
    position: "relative",
    borderRadius: theme.shape.borderRadius,
    backgroundColor: alpha(theme.palette.common.white, 0.15),
    "&:hover": {
      backgroundColor: alpha(theme.palette.common.white, 0.25),
    },
    marginRight: theme.spacing(2),
    marginLeft: 0,
    width: "100%",
    [theme.breakpoints.up("sm")]: {
      marginLeft: theme.spacing(3),
      width: "auto",
    },
  },
  searchIcon: {
    padding: theme.spacing(0, 2),
    height: "100%",
    position: "absolute",
    pointerEvents: "none",
    display: "flex",
    alignItems: "center",
    justifyContent: "center",
  },
  inputRoot: {
    color: "inherit",
  },
  inputInput: {
    padding: theme.spacing(1, 1, 1, 0),
    // vertical padding + font size from searchIcon
    paddingLeft: `calc(1em + ${theme.spacing(4)}px)`,
    transition: theme.transitions.create("width"),
    width: "100%",
    [theme.breakpoints.up("md")]: {
      width: "20ch",
    },
  },
  sectionDesktop: {
    display: "none",
    [theme.breakpoints.up("md")]: {
      display: "flex",
    },
  },
  sectionMobile: {
    display: "flex",
    [theme.breakpoints.up("md")]: {
      display: "none",
    },
  },
  avatar: {
    width: "25px",
    height: "25px",
    color: theme.palette.getContrastText(deepPurple[500]),
    backgroundColor: deepPurple[500],
  },
}));

export default function PrimarySearchAppBar(props) {
  const classes = useStyles();
  const [anchorEl, setAnchorEl] = React.useState(null);
  const [menuBarAnchorEl, setMenuBarAnchorEl] = React.useState(null);
  const [mobileMoreAnchorEl, setMobileMoreAnchorEl] = React.useState(null);

  const isMenuOpen = Boolean(anchorEl);
  const isMobileMenuOpen = Boolean(mobileMoreAnchorEl);
  const isMenuBarOpen = Boolean(menuBarAnchorEl);

  const handleProfileMenuOpen = (event) => {
    setAnchorEl(event.currentTarget);
  };

  const handleMobileMenuOpen = (event) => {
    setMobileMoreAnchorEl(event.currentTarget);
  };

  const handleMenuBarOpen = (event) => {
    setMenuBarAnchorEl(event.currentTarget);
  };

  const handleMenuClose = () => {
    setAnchorEl(null);
    handleMobileMenuClose();
  };

  const handleMobileMenuClose = () => {
    setMobileMoreAnchorEl(null);
  };

  const handleMenuBarClose = () => {
    setMenuBarAnchorEl(null);
  };

  const handleMobileMenuCart = () => {
    handleMobileMenuClose();
    props.showCart();
  };

  const handleMyOrder = () => {
    handleMenuBarClose();
    props.showHistory();
  };

  const menuId = "primary-search-account-menu";
  const renderMenu = (
    <Menu
      anchorEl={anchorEl}
      anchorOrigin={{ vertical: "top", horizontal: "right" }}
      id={menuId}
      keepMounted
      transformOrigin={{ vertical: "top", horizontal: "right" }}
      open={isMenuOpen}
      onClose={handleMenuClose}
    >
      <MenuItem
        onClick={() => {
          window.location.href = "/register";
        }}
      >
        Signup
      </MenuItem>
      <MenuItem
        onClick={() => {
          window.location.href = "/login";
        }}
      >
        Signin
      </MenuItem>
    </Menu>
  );

  const renderMenuAuthenticated = (
    <Menu
      anchorEl={anchorEl}
      anchorOrigin={{ vertical: "top", horizontal: "right" }}
      id={menuId}
      keepMounted
      transformOrigin={{ vertical: "top", horizontal: "right" }}
      open={isMenuOpen}
      onClose={handleMenuClose}
    >
      <MenuItem
        onClick={() => {
          sessionStorage.clear();
          window.location.href = "/home";
        }}
      >
        Signout
      </MenuItem>
    </Menu>
  );
  const mobileMenuId = "primary-search-account-menu-mobile";
  const renderMobileMenu = (
    <Menu
      anchorEl={mobileMoreAnchorEl}
      anchorOrigin={{ vertical: "top", horizontal: "right" }}
      id={mobileMenuId}
      keepMounted
      transformOrigin={{ vertical: "top", horizontal: "right" }}
      open={isMobileMenuOpen}
      onClose={handleMobileMenuClose}
    >
      <MenuItem onClick={handleMobileMenuCart}>
        <IconButton
          aria-label="cart of current user"
          aria-controls="cart"
          aria-haspopup="true"
          color="inherit"
        >
          <Badge color="secondary" badgeContent={props.itemCount}>
            <AddShoppingCartIcon />
          </Badge>
        </IconButton>
        Cart
      </MenuItem>
      <MenuItem onClick={handleProfileMenuOpen}>
        {isAuthenticated() ? (
          <IconButton onClick={handleProfileMenuOpen}>
            <Avatar className={classes.avatar}>
              {isAuthenticated().user.email[0]}
            </Avatar>
          </IconButton>
        ) : (
          <IconButton
            edge="end"
            aria-label="account of current user"
            aria-controls={menuId}
            aria-haspopup="true"
            onClick={handleProfileMenuOpen}
            color="inherit"
          >
            <AccountCircle />
          </IconButton>
        )}
        Profile
      </MenuItem>
    </Menu>
  );

  const menuBarId = "menubar";
  const renderMenuBar = (
    <Menu
      anchorEl={menuBarAnchorEl}
      anchorOrigin={{ vertical: "top", horizontal: "left" }}
      id={menuBarId}
      keepMounted
      transformOrigin={{ vertical: "top", horizontal: "left" }}
      open={isMenuBarOpen}
      onClose={handleMenuBarClose}
    >
      <MenuItem
        onClick={() => {
          window.location.href = "/home";
        }}
      >
        <IconButton aria-label="home" color="inherit">
          <HomeIcon />
        </IconButton>
        Home
      </MenuItem>
      <MenuItem>
        <IconButton aria-label="profile" color="inherit">
          <AccountCircle />
        </IconButton>
        Profile
      </MenuItem>
      <MenuItem onClick={handleMyOrder}>
        <IconButton aria-label="history" color="inherit">
          <HistoryIcon />
        </IconButton>
        My Order
      </MenuItem>
    </Menu>
  );

  return (
    <div className={classes.grow}>
      <AppBar position="static" className={classes.appBar}>
        <Toolbar variant="dense">
          <IconButton
            edge="start"
            aria-label="menu bar"
            aria-controls={menuBarId}
            aria-haspopup="true"
            onClick={handleMenuBarOpen}
            color="inherit"
          >
            <MenuIcon />
          </IconButton>
          <Typography className={classes.title} variant="h6" noWrap>
            E-Retail
          </Typography>
          <div className={classes.search}>
            <div className={classes.searchIcon}>
              <SearchIcon />
            </div>
            <InputBase
              placeholder="Search…"
              classes={{
                root: classes.inputRoot,
                input: classes.inputInput,
              }}
              inputProps={{ "aria-label": "search" }}
              onChange={(event) => props.handleSearchChange(event.target.value)}
            />
          </div>
          <div className={classes.grow} />
          <div className={classes.sectionDesktop}>
            <IconButton
              aria-label="cart of current user"
              aria-controls="cart"
              aria-haspopup="true"
              color="inherit"
              onClick={props.showCart}
            >
              <Badge color="secondary" badgeContent={props.itemCount}>
                <AddShoppingCartIcon />
              </Badge>
            </IconButton>
            {isAuthenticated() ? (
              <IconButton onClick={handleProfileMenuOpen}>
                <Avatar className={classes.avatar}>
                  {isAuthenticated().user.email[0]}
                </Avatar>
              </IconButton>
            ) : (
              <IconButton
                edge="end"
                aria-label="account of current user"
                aria-controls={menuId}
                aria-haspopup="true"
                onClick={handleProfileMenuOpen}
                color="inherit"
              >
                <AccountCircle />
              </IconButton>
            )}
          </div>
          <div className={classes.sectionMobile}>
            <IconButton
              aria-label="show more"
              aria-controls={mobileMenuId}
              aria-haspopup="true"
              onClick={handleMobileMenuOpen}
              color="inherit"
            >
              <MoreIcon />
            </IconButton>
          </div>
        </Toolbar>
      </AppBar>
      {renderMobileMenu}
      {isAuthenticated() ? renderMenuAuthenticated : renderMenu}
      {renderMenuBar}
    </div>
  );
}
